class Br::City < ActiveRecord::Base
  belongs_to :state

  def to_s
    self.name
  end
end
