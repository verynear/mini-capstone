class ProductsController < ApplicationController

	before_action :authenticate_user!, only: [:new, :edit]

	def index
		@products = Product.all
		sort_attribute = params[:sort]
		sort_order = params[:sort_order]
		discount_level = params[:discount]
		@random_product_id = Product.all.sample.id
		search_term = params[:search_term]

		if search_term
			search_term = "%#{search_term}%"
			@products = @products.where("name ILIKE ?", search_term)
		end


		if discount_level
			@products = @products.where('price < ?', discount_level.to_i)
		end

		if sort_attribute && sort_order
		    @products = @products.order(sort_attribute => sort_order)
		elsif sort_attribute
		  	@products = @products.order(sort_attribute)
		end
		
	end


	def new

	end

	def create
		@product = Product.create(
		name: params[:name],
		description: params[:description],
		price: params[:price],
		supplier_id: params[:supplier][:supplier_id])

		Image.create(url: params[:image], product_id: @product_id) if params[:image]
		Image.create(url: params[:image_2], product_id: @product_id) if params[:image_2]

		flash[:success] = "Product Listing Created"
		redirect_to "/products/#{@product.id}"
	end

	def show
		@product = Product.find(params[:id])
		@supplier = @product.supplier.name
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(
						name: params[:name], 
						price: params[:price], 
						description: params[:description]
						)
		
		Image.update(url: params[:image], product_id: @product.id) if params[:image]
    	Image.update(url: params[:image_2], product_id: @product.id) if params[:image_2]

		flash[:success] = "Product Listing Updated"
		redirect_to "/products/#{@product.id}"
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		flash[:warning] = "Product Listing Removed"
		redirect_to '/products'
	end

	def random
		random_product = Product.all.sample

		redirect_to "/products/#{random_product.id}"
	end

end
