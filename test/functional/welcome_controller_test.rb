require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  context "Welcome controller index action" do
    
    setup do
      get :index
    end
    
    should_require_authenticated_user

  end

end