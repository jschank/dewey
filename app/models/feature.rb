class Feature < ActiveRecord::Base
  belongs_to :location
  belongs_to :promotion
  belongs_to :event
  has_one :venue, :through => :location

  def name
    promotion.name
  end
end
