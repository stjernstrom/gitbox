class SshKey < ActiveRecord::Base
  attr_accessible :title, :user_id, :data
end
