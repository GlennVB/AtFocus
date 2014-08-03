require 'test_helper'

class BusinessDashesControllerTest < ActionController::TestCase
  setup do
    @business_dash = business_dashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_dashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_dash" do
    assert_difference('BusinessDash.count') do
      post :create, business_dash: { business_id: @business_dash.business_id, description: @business_dash.description, title: @business_dash.title }
    end

    assert_redirected_to business_dash_path(assigns(:business_dash))
  end

  test "should show business_dash" do
    get :show, id: @business_dash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_dash
    assert_response :success
  end

  test "should update business_dash" do
    patch :update, id: @business_dash, business_dash: { business_id: @business_dash.business_id, description: @business_dash.description, title: @business_dash.title }
    assert_redirected_to business_dash_path(assigns(:business_dash))
  end

  test "should destroy business_dash" do
    assert_difference('BusinessDash.count', -1) do
      delete :destroy, id: @business_dash
    end

    assert_redirected_to business_dashes_path
  end
end
