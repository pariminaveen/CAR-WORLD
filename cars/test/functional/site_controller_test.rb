require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get us" do
    get :us
    assert_response :success
  end

end
