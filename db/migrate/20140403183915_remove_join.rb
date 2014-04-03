class RemoveJoin < ActiveRecord::Migration
  def change
    drop_table :ingredients_recipes
    add_column :ingredients, :unit, :string
    add_column :ingredients, :quantity, :integer
    add_column :ingredients, :recipe_id, :integer
  end
end
