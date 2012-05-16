class Venue < ActiveRecord::Base
  has_many :links, :as => :linkable
  has_many :weblocations, :through => :links

  has_many :schedules, :as => :schedulable
  
  has_many :locations, :order => 'name ASC'

  default_scope :order => 'name ASC'

  validates :name, :presence => true

  accepts_nested_attributes_for :links, :reject_if => lambda { |a| a[:url].blank? }, :allow_destroy => true

  accepts_nested_attributes_for :locations, :allow_destroy => true

  mount_uploader :logo, LogoUploader

end
