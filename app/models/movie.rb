class Movie < ActiveRecord::Base
  belongs_to :category
  mount_uploader :cover, CoverUploader
  validates_presence_of :title, :year, :category, :description
end
