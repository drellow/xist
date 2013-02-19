class XistFile < ActiveRecord::Base
  attr_accessible :body, :title, :xist_id

  belongs_to :xist, :inverse_of => :xist_files


end
