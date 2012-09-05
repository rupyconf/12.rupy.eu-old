class Training < ActiveRecord::Base
  belongs_to :event

  validates_presence_of :event, :sequence, :name, :description, :instructor_name, :instructor_description
  has_attached_file :photo, :url => "/system/:class/:attachment/:id.:extension", :default_url => "/default/default-training.png", :styles => { :original => ["870>x230", :png] }
  has_attached_file :instructor_photo, :url => "/system/:class/:attachment/:id-instructor.:extension", :default_url => "/default/default-person.png", :styles => { :original => ["150>x150", :png] }
end
