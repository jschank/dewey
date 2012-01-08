class Weblocation < ActiveRecord::Base
  validates :name, :tagline, :icon, :presence => true
  
  belongs_to :link
end
