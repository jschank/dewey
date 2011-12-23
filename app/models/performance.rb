class Performance < ActiveRecord::Base
  belongs_to :act
  belongs_to :location
  belongs_to :occurrence
end
