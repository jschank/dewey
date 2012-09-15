class Festival < ActiveRecord::Base
  has_many :links, :as => :linkable, :dependent => :destroy
  has_many :weblocations, :through => :links
  
  validates :name, :presence => true
  
  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true

  default_scope :order => 'name ASC'
  
  mount_uploader :logo, LogoUploader
  
end
