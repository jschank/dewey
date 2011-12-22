class Event < ActiveRecord::Base
  has_many :occurrences
  has_many :features, :through => :occurrences
  has_many :performances, :through => :features
  has_many :promotions, :through => :performances
  
  has_many :locations, :through => :features
  has_many :venues, :through => :locations
  
  # def features_for(date)
  #   features.select {|feature| feature.event_start == date}
  # end

end
