class Event < ActiveRecord::Base
  has_many :links, :as => :linkable, :dependent => :destroy
  has_many :weblocations, :through => :links

  has_many :schedules, :as => :schedulable  
  # has_many :performances, :as => :schedulable
  # has_many :acts, :through => :performances, :source => :act
  
  validates :name, :presence => true
  
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true

  default_scope :order => 'name ASC'

  def self.upcoming(date, event)
    items = Schedule.future_events_of(date, event)
    items.map{ |i| i.get_ultimate_parent }.uniq
  end

  mount_uploader :logo, LogoUploader

end
