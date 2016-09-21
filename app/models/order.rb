class Order < ApplicationRecord
	belongs_to :user
	has_many :carted_products
	has_many :products, through: :carted_product

	def pretty_created_at
		created_at.strftime("%b %e, %l:%M %p")
	end

	def id_present_to_customer
		3400 + id
	end

	def calculate_totals
		subtotal_collector = 0
		carted_products.each do |carted_product|
			subtotal_collector += carted_product.subtotal
		end

		self.subtotal = subtotal_collector
		self.tax = subtotal * 0.09
		self.total = subtotal + tax	
		save
	end
end
