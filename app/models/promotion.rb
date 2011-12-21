class Promotion < ActiveRecord::Base
  has_many :features
  has_many :events, :through => :features, :uniq => true
end
