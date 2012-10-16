class Speaker < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :event, :sequence, :name, :description
  has_attached_file :photo, url:         '/assets/:class/:filename',
                            default_url: '/assets/:class/default.png'

  default_scope order("event_id, sequence")

  def to_s
    self.name
  end

end
