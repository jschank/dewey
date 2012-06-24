class RelatedAct < ActiveRecord::Base
  belongs_to :act_1, :class_name => "Act"
  belongs_to :act_2, :class_name => "Act"
end
