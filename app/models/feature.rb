class Feature < ActiveRecord::Base
  belongs_to :location
  belongs_to :promotion
  belongs_to :event
  has_one :venue, :through => :location
end
