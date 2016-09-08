class Product < ApplicationRecord

	def sale_message
		if price.to_f < 2
			"Discount Item!"
		else
			"On Sale!"
		end
	end

	def discounted?
		if price.to_f < 500
	end

	def item_tax
		price.to_f * 0.090
	end

	def item_total
		price.to_f + item_tax
	end
end
