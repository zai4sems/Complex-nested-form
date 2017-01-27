class CreateQuantity < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.float :amount
      t.references :recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
    end
  end
end
