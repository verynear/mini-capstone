class RemoveImageIdFromProducts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products, :image_id, :integer
  end
end
