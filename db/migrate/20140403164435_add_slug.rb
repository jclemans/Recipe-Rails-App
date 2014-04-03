class AddSlug < ActiveRecord::Migration
  def change
    add_column :recipes, :slug_name, :string
    add_column :tags, :slug_name, :string
  end
end
