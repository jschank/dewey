class Promotion < ActiveRecord::Base
  has_many :events
  has_many :venues, :through => :events
  has_many :features, :class_name => "Promotion"
  belongs_to :feature, :class_name => "Promotion", :foreign_key => "feature_id"
end
