class Event < ActiveRecord::Base
  has_many :features
  has_many :promotions, :through => :features 
  has_many :locations
  has_many :venues, :through => :locations
    
end
