class Feature < ActiveRecord::Base
  belongs_to :location
  belongs_to :performance
  belongs_to :occurrence
  has_one :venue, :through => :location
  has_one :promotion, :through => :performance
  has_one :event, :through => :occurrence

  def name
    promotion.name
  end
end
