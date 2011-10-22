class Venue < ActiveRecord::Base
  has_many :events
  has_many :promotions, :through => :events
end
