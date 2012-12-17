require 'test_helper'

class UesesControllerTest < ActionController::TestCase
  setup do
    @uese = ueses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ueses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uese" do
    assert_difference('Uese.count') do
      post :create, uese: { description: @uese.description, image_url: @uese.image_url, price: @uese.price, title: @uese.title }
    end

    assert_redirected_to uese_path(assigns(:uese))
  end

  test "should show uese" do
    get :show, id: @uese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uese
    assert_response :success
  end

  test "should update uese" do
    put :update, id: @uese, uese: { description: @uese.description, image_url: @uese.image_url, price: @uese.price, title: @uese.title }
    assert_redirected_to uese_path(assigns(:uese))
  end

  test "should destroy uese" do
    assert_difference('Uese.count', -1) do
      delete :destroy, id: @uese
    end

    assert_redirected_to ueses_path
  end
end
