class Performance < ActiveRecord::Base
  belongs_to :act
  belongs_to :location
  belongs_to :occurrence
  has_one :event, :through => :occurrence
  has_one :venue, :through => :location

  default_scope :order => 'priority ASC'

  def self.future_performances(date)
      includes(:act, :location, :occurrence, :event, :venue).where("performance_start >= ?", date)
  end

  def self.in_progress(date)
      includes(:act, :location, :occurrence, :event, :venue).where("performance_start <= ? AND ? < performance_end", date, date)
  end

end
