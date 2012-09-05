class Event < ActiveRecord::Base

  has_many :speakers
  has_many :sponsors
  has_many :teams
  has_many :trainings

  validates_presence_of :name, :domain, :locale, :title, :brochure, :city, :description, :place, :address, :latitude, :longitude
  has_attached_file :photo, :url => "/system/:class/:attachment/:id.:extension", :default_url => "/default/default-event.png", :styles => { :original => ["500>x333", :png] }
  has_attached_file :inscription_photo, :url => "/system/:class/:attachment/:id-inscription.:extension", :default_url => "/default/default-event-inscription.png", :styles => { :original => ["870>x230", :png] }

  def self.find_by_host(host)
    find_by_domain(host.gsub("www.", ""))
  end

  def self.find_by_host_test
    where("domain LIKE ?", "localhost%").first
  end

  def to_s
    self.name
  end

  def latitude_and_longitude
    "#{self.latitude}, #{self.longitude}"
  end

  def available_locale
    ["en", "pt-BR"]
  end

  def has_event_inscription?
    !self.inscription_description.blank?
  end

end
