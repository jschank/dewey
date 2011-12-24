class Occurrence < ActiveRecord::Base
  belongs_to :event
  has_many :performances
  has_many :acts, :through => :performances
  
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations, :uniq => true
end
