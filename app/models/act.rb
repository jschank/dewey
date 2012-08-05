class Act < ActiveRecord::Base  
  validates :name, :presence => true

  default_scope :order => 'name ASC'

  mount_uploader :logo, LogoUploader
  
  has_many :links, :as => :linkable, :dependent => :destroy
  has_many :weblocations, :through => :links
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true
  
  has_many :schedules, :as => :schedulable  
      
  has_many(:forward_related_acts, :class_name => "RelatedAct", :foreign_key => :act_1_id, :dependent => :destroy)
  has_many(:reverse_related_acts, :class_name => "RelatedAct", :foreign_key => :act_2_id, :dependent => :destroy)

  has_many :related_acts, :class_name => "Act", :through => :forward_related_acts, :source => :act_2  
  has_many :acts_related, :class_name => "Act", :through => :reverse_related_acts, :source => :act_1  

  accepts_nested_attributes_for :forward_related_acts, :allow_destroy => true
  accepts_nested_attributes_for :reverse_related_acts, :allow_destroy => true
      
  def related
    related_acts + acts_related
  end
    
end
