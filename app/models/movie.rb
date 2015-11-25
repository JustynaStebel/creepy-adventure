class Movie < ActiveRecord::Base
  mount_uploader :cover, CoverUploader
  validates_presence_of :title, :year, :description
  CATEGORIES = ["Horror", "Thriller", "Action", "Comedy"]
  validates :category_name, inclusion: { in: CATEGORIES }
end
