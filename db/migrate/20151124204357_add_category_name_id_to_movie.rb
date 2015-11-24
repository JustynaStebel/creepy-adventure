class AddCategoryNameIdToMovie < ActiveRecord::Migration
  def change
    rename_column :movies, :category, :category_name
    add_column :movies, :category_id, :integer
  end
end
