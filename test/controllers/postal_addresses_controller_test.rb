require 'test_helper'

class PostalAddressesControllerTest < ActionController::TestCase
  setup do
    @postal_address = postal_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postal_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postal_address" do
    assert_difference('PostalAddress.count') do
      post :create, postal_address: { addressCountry: @postal_address.addressCountry, addressLocality: @postal_address.addressLocality, addressRegion: @postal_address.addressRegion, postalCode: @postal_address.postalCode, streetAddress: @postal_address.streetAddress }
    end

    assert_redirected_to postal_address_path(assigns(:postal_address))
  end

  test "should show postal_address" do
    get :show, id: @postal_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postal_address
    assert_response :success
  end

  test "should update postal_address" do
    patch :update, id: @postal_address, postal_address: { addressCountry: @postal_address.addressCountry, addressLocality: @postal_address.addressLocality, addressRegion: @postal_address.addressRegion, postalCode: @postal_address.postalCode, streetAddress: @postal_address.streetAddress }
    assert_redirected_to postal_address_path(assigns(:postal_address))
  end

  test "should destroy postal_address" do
    assert_difference('PostalAddress.count', -1) do
      delete :destroy, id: @postal_address
    end

    assert_redirected_to postal_addresses_path
  end
end
