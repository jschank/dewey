class Weblocation < ActiveRecord::Base
  validates :name, :presence => true
  
  belongs_to :link

  mount_uploader :logo, LogoUploader
end
