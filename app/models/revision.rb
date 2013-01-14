class Revision < ActiveRecord::Base
  attr_accessible :nbItem, :published
  has_many :search_engines
  before_create :initNbItem

  def initNbItem
    self.nbItem = 0
  end

end
