class AddCoverToMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :covers
    add_column :movies, :cover, :string
  end
end
