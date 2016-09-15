class OrdersController < ApplicationController
	def new
	end

	def create
		product = Product.find(params[:product_id])
		quantity = params[:quantity].to_i
		subtotal = product.price * quantity
		tax = subtotal * 0.09
		total = subtotal + tax
		@order = Order.create(quantity: params[:quantity],
								user_id: current_user.id,
								product_id: params[:product_id],
								subtotal: subtotal,
								tax: tax,
								total: total)

		redirect_to "/order/#{@order.id}"
	end

	def show
		@order = Order.find(params[:id])
		@product = Product.find(@order.product_id)
	end
end
