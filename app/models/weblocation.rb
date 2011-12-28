class Weblocation < ActiveRecord::Base
  validates :name, :tagline, :icon, :presence => true
end
