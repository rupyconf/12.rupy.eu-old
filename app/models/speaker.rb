class Speaker < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :event, :sequence, :name, :description
  has_attached_file :photo, :url => "/system/:class/:attachment/:id.:extension", :default_url => "/default/default-person.png", :styles => { :original => ["150>x150", :png] }

  default_scope order("event_id, sequence")

end
