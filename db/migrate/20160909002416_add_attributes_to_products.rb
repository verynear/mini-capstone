class AddAttributesToProducts < ActiveRecord::Migration[5.0]
  def change
  	change_column :products, :description, :text
  	remove_column :products, :price, :string
  	add_column :products, :in_stock, :boolean, default: true
  end
end
