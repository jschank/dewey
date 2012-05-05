class Act < ActiveRecord::Base  
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links
  
  has_many :schedules, :as => :schedulable
  
  validates :name, :presence => true
  
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true

  default_scope :order => 'name ASC'
  
  def self.upcoming(date, act)
    items = Schedule.future_events_of(date, act)
    items.map{ |i| i.get_ultimate_parent }.uniq
  end
    
  mount_uploader :logo, LogoUploader
    
end
