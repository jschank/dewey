class Occurrence < ActiveRecord::Base
  belongs_to :event
  has_many :performances
  has_many :acts, :through => :performances
  
  has_many :locations, :through => :performances
  has_many :venues, :through => :locations, :uniq => true

  default_scope :order => 'event_start ASC'

  def self.future_occurrences(date)
      includes(:event, :performances, :acts, :locations, :venues).where("event_start >= ?", date)
  end

end
