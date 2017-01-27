class Quantity < ActiveRecord::Base
   belongs_to :recipe
   belongs_to :ingredient
   #validates_presence_of :recipe_id, :ingredient_id, :amount
   accepts_nested_attributes_for :ingredient, reject_if: :all_blank, :allow_destroy => true
   
   delegate :name, :price, to: :ingredient, prefix: true
end