class Page < ActiveRecord::Base

  attr_accessible :title, :content, :permalink

  validates :title, :presence => true, :length => { :maximum => 100 }
  validates :permalink, :presence => true, :uniqueness => true, :format => /^[-\w\d]+$/, :length => { :maximum => 100 }

  def to_param
    self.permalink
  end

end