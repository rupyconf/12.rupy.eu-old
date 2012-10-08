class SponsorType < ActiveRecord::Base

  has_many :sponsors

  default_scope order("sequence")

  def to_s
    self.description
  end

  def needed_sponsor_description?
    %w{ GOLD DIAMOND }.include? description
  end

end