class AddPriceToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :price, :decimal, precision: 6, scale: 2, default: 1000
  end
end
