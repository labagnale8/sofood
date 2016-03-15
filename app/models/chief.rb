class Chief < ActiveRecord::Base
  has_many :meals
  validates_presence_of :name, :photo
end
