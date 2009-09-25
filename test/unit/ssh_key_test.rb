require 'test_helper'

class SshKeyTest < ActiveSupport::TestCase

  should_belong_to :user
  should_not_allow_mass_assignment_of :user_id
  
end
