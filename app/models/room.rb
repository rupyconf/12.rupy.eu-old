class Room < ActiveRecord::Base
  has_many :schedules
  validates_presence_of :name

  def to_s
    self.name
  end
end
