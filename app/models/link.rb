class Link < ActiveRecord::Base
  belongs_to :linkable, :polymorphic => true
  
  belongs_to :weblocation
end
