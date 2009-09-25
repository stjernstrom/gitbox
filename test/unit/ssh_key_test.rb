require 'test_helper'

class SshKeyTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SshKey.new.valid?
  end
end
