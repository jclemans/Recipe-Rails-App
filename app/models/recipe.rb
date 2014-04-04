class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :ingredients
  validates :name, :presence => true
  validates :slug_name, :presence => true

 end
