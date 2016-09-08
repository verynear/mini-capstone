class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new

	end

	def create
		@product = Product.create(name: params[:name], 
								price: params[:price],
								image: params[:image],
								description: params[:description])
		# @product.name = params[:name]
		# @product.price = params[:price]

		# @product.save
		flash[:success] = "New Product Listing Created"
		redirect_to "/products/#{@product.id}"
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(name: params[:name], 
						price: params[:price], 
						image: params[:image], 
						description: params[:description])
		# @product.name = params[:name]
		# @product.price = params[:price]
		# @product.image = params[:image]
		# render 'show.html.erb'
		flash[:success] = "Product Listing Updated"
		redirect_to "/products/#{@product.id}"
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		flash[:warning] = "Product Listing Removed"
		redirect_to '/products'
	end

end
