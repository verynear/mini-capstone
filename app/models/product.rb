class Product < ApplicationRecord

	belongs_to :supplier
	has_many :images
	has_many :orders

	def sale_message
		if price.to_f < 2
			"Discount Item!"
		else
			"On Sale!"
		end
	end

	def discounted?
		price.to_f < 500
	end

	def item_tax
		price.to_f * 0.090
	end

	def item_total
		price.to_f + item_tax
	end

	def top_image
		first_image = images.first
		if first_image
			first_image.url
		else
			"http://4.bp.blogspot.com/-MkvEkpV8fVs/UdMPTBgUqfI/AAAAAAAAljU/PUQPYPx9J1g/s800/funny-lost-and-found-posters-016.jpg"
		end
	end
end
