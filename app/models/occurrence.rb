class Occurrence < ActiveRecord::Base
  belongs_to :event
  has_many :features
  has_many :performances, :through => :features
  has_many :promotions, :through => :performances
  
  has_many :locations, :through => :features
  has_many :venues, :through => :locations
end
