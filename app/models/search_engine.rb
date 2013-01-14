
class SearchEngine < ActiveRecord::Base
  attr_accessible :country, :name, :revision_id, :url, :icon, :remote_icon_url
  belongs_to :revision
  mount_uploader :icon, IconUploader

  after_create :updateRevision

  def updateRevision
    r = Revision.find(self.revision_id)
    r.nbItem = r.nbItem+1
    r.save
  end
end
