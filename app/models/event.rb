class Event < ActiveRecord::Base
  has_many :features, :order => 'priority'
  has_many :promotions, :through => :features
  has_many :locations
  has_many :venues, :through => :locations
  
  def features_for(date)
    features.select {|feature| feature.event_start == date}
  end

end
