class Act < ActiveRecord::Base  
  has_many :links, :as => :linkable, :dependent => :destroy
  has_many :weblocations, :through => :links
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true
  
  has_many :schedules, :as => :schedulable
  
  validates :name, :presence => true

  default_scope :order => 'name ASC'
  
  def self.upcoming(date, act)
    items = Schedule.future_events_of(date, act)
    items.map{ |i| i.get_ultimate_parent }.uniq
  end
    
  has_many(:forward_related_acts, :class_name => "RelatedAct", :foreign_key => :act_1_id, :dependent => :destroy)
  has_many(:reverse_related_acts, :class_name => "RelatedAct", :foreign_key => :act_2_id, :dependent => :destroy)

  has_many :related_acts, :class_name => "Act", :through => :forward_related_acts, :source => :act_2  
  has_many :acts_related, :class_name => "Act", :through => :reverse_related_acts, :source => :act_1  
    
  mount_uploader :logo, LogoUploader
    
end
