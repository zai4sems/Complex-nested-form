class Recipe < ActiveRecord::Base
   has_many :quantities, dependent: :destroy
   has_many :ingredients, through: :quantities, dependent: :destroy, :class_name => 'Ingredient'
   validates_presence_of :name
   #accepts_nested_attributes_for :ingredients
   accepts_nested_attributes_for :quantities, :allow_destroy => true
end