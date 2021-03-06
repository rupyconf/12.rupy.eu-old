class Sponsor < ActiveRecord::Base

  belongs_to :sponsor_type
  belongs_to :event

  validates_presence_of :event, :sponsor_type, :sequence, :name, :description, :website
  has_attached_file :logo, url: '/assets/:class/:filename'

  default_scope order("event_id, sponsor_type_id, sequence")

  def description_available?
    not self.description.blank?
  end

end
