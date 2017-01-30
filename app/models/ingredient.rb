class Ingredient < ActiveRecord::Base
   has_many :quantities, dependent: :destroy
   has_many :recipes, through: :quantities
   #validates_presence_of :name
end