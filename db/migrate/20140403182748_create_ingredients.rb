class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.timestamps
    end
    create_table :ingredients_recipes do |t|
      t.integer :ingredients_id
      t.integer :recipes_id
    end
    remove_column :recipes, :content
  end
end
