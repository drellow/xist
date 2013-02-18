class Favorite < ActiveRecord::Base
  attr_accessible :user_id, :xist_id

  validates_uniqueness_of :xist_id, :scope => :user_id

  belongs_to :user
  belongs_to :xist
end
