class Team < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :event, :name, :description
  has_attached_file :photo, url: '/assets/:class/:filename'

  default_scope order('event_id, name')

end
