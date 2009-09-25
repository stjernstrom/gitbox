require 'test_helper'

class SshKeysControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => SshKey.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    SshKey.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    SshKey.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ssh_key_url(assigns(:ssh_key))
  end
  
  def test_edit
    get :edit, :id => SshKey.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    SshKey.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SshKey.first
    assert_template 'edit'
  end
  
  def test_update_valid
    SshKey.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SshKey.first
    assert_redirected_to ssh_key_url(assigns(:ssh_key))
  end
  
  def test_destroy
    ssh_key = SshKey.first
    delete :destroy, :id => ssh_key
    assert_redirected_to ssh_keys_url
    assert !SshKey.exists?(ssh_key.id)
  end
end
