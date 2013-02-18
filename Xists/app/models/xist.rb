class Xist < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :user
  has_many :xist_files
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :favorites

  validates :user, presence: true
end
