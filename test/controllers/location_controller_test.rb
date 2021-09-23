require 'test_helper'

class LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get location_index_url
    assert_response :success
  end

  test "should get show" do
    get location_show_url
    assert_response :success
  end

  test "should get new" do
    get location_new_url
    assert_response :success
  end

  test "should get create" do
    get location_create_url
    assert_response :success
  end

  test "should get edit" do
    get location_edit_url
    assert_response :success
  end

  test "should get update" do
    get location_update_url
    assert_response :success
  end

  test "should get destroy" do
    get location_destroy_url
    assert_response :success
  end

end
