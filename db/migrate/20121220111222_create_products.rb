class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :no_of_items
      t.string :product_img_uid
      t.string :product_img_name
      t.integer :category_id
      t.timestamps
    end
  end
end
