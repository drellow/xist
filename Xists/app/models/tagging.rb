class Tagging < ActiveRecord::Base
  attr_accessible :tag_id, :xist_id

  belongs_to :tag
  belongs_to :xist

  # validates_uniqueness_of :tag_id, :scope => :xist_id
end
