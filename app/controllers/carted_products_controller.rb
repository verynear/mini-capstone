class CartedProductsController < ApplicationController
	before_action :authenticate_user!

	def index
		if current_user && current_user.currently_carted.any?
			@carted_products = current_user.currently_carted
		else
			flash[:warning] = "Please add items to cart."
			redirect_to '/'
		end
	end

	def create
		product = Product.find(params[:product_id])
		
		@carted_product = CartedProduct.create(
					user_id: current_user.id,
					product_id: params[:product_id],
					quantity: params[:quantity],
					status: "carted"
					)

		flash[:success] = "Added to Cart"
		redirect_to "/carted_products"
	end

	def destroy
		carted_product = CartedProduct.find(params[:id])
		carted_product.update(status: "removed")
		flash[:success] = "Product Removed From Cart"
		redirect_to "/carted_products"
	end

end
