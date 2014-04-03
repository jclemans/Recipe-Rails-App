class Tag < ActiveRecord::Base
  validates_presence_of :name
  has_many :recipes, through: :recipes_tags

end
