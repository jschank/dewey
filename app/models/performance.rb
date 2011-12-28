class Performance < ActiveRecord::Base
  belongs_to :act
  belongs_to :location
  belongs_to :occurrence
  has_one :event, :through => :occurrence
  has_one :venue, :through => :location

  default_scope :order => 'priority ASC'
end
