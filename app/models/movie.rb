class Movie < ActiveRecord::Base
  mount_uploader :cover, CoverUploader
  CATEGORIES = ["Horror", "Thriller", "Action", "Comedy"]
  validates :category_name, inclusion: { in: CATEGORIES }
  validates_presence_of :title, :year, :description
end
