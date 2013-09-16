class Product < ActiveRecord::Base
  attr_accessible :description, :name, :no_of_items, :price, :product_img_name, :product_img_uid, :product_img,:category_id  

  belongs_to :category

  image_accessor :product_img  

  validates_presence_of :name, :message=>"must be entered"
  validates_presence_of :product_img, :message=>"must be added"
  validates_presence_of :category_id, :message=>"add the category"
end
