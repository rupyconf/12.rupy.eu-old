class Schedule < ActiveRecord::Base

  belongs_to :event
  belongs_to :speaker1, :class_name => "Speaker", :foreign_key => "speaker1_id"
  belongs_to :speaker2, :class_name => "Speaker", :foreign_key => "speaker2_id"
  belongs_to :room

  validates_presence_of :event, :speaker1, :talk, :talk_description

  default_scope order("event_id, occur_at")

end
