class Weblocation < ActiveRecord::Base
  validates :name, :presence => true
  validates :logo, :presence => true
  validates :popularity, :presence => true
  
  belongs_to :link

  mount_uploader :logo, LogoUploader
end
