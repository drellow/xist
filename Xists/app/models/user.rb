class User < ActiveRecord::Base
  attr_accessible :name
  has_many :xists
  has_many :favorites
  validates :name, uniqueness: true
end
