class Training < ActiveRecord::Base
  belongs_to :event
  has_many :inscriptions, :class_name => "Br::Inscription"

  validates_presence_of :event, :sequence, :name, :description, :instructor_name, :instructor_description, :instructor_job_title
  has_attached_file :photo, :url => "/system/:class/:attachment/:id.:extension", :default_url => "/default/default-training.png", :styles => { :original => ["870>x230", :png] }
  has_attached_file :instructor_photo, :url => "/system/:class/:attachment/:id-instructor.:extension", :default_url => "/default/default-person.png", :styles => { :original => ["150>x150", :png] }

  def inscription_available?
    self.inscription_amount.nil? || self.inscription_amount > self.inscriptions.count
  end
end
