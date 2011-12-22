class Performance < ActiveRecord::Base
  belongs_to :promotion
  has_many :features
  has_many :occurrences, :through => :features
  has_many :events, :through => :occurences
  
  has_many :locations, :through => :features
  has_many :venues, :through => :locations
end
