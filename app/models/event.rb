class Event < ActiveRecord::Base
  has_many :features
  has_many :promotions, :through => :features 
  has_many :locations
  has_many :venues, :through => :locations
  
  def start_date
    self.features.first.start_time.strftime("%A, %B %d, %Y")
  end
  
end
