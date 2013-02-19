class Xist < ActiveRecord::Base
  attr_accessible :title, :user_id, :xist_files_attributes

  belongs_to :user
  has_many :xist_files, :inverse_of => :xist
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :favorites

  accepts_nested_attributes_for :xist_files

  validates :user, presence: true
end
