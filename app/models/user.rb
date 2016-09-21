class User < ApplicationRecord
	has_secure_password
	has_many :orders
	has_many :products, through: :carted_product
	has_many :carted_products

	def currently_carted
		carted_products.where(status: "carted")
	end
end
