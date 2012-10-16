class Schedule < ActiveRecord::Base

  belongs_to :event
  belongs_to :speaker

  validates_presence_of :event, :occur_at, :speaker, :talk, :talk_description

  default_scope order("event_id, occur_at")

end
