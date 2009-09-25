class SshKey < ActiveRecord::Base
  attr_accessible :title, :data
  
  belongs_to :user
  
end
