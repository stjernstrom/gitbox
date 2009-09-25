class SshKey < ActiveRecord::Base
  attr_accessible :title, :user_id, :data
  
  belongs_to :user
  
end
