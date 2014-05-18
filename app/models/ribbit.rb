class Ribbit < ActiveRecord::Base  
  default_scope order: 'created_at DESC'
  attr_accessible :content, :userid 
  belongs_to :user  # foreign key to tipo n-1. Os users tem muitos tweets.
 
  validates :content, length: { maximum: 140 }  
end
