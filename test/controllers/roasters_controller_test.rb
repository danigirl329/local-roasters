require "test_helper"

class RoastersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roasters_index_url
    assert_response :success
  end

  test "should get show" do
    get roasters_show_url
    assert_response :success
  end

  test "should get new" do
    get roasters_new_url
    assert_response :success
  end

  test "should get create" do
    get roasters_create_url
    assert_response :success
  end

  test "should get edit" do
    get roasters_edit_url
    assert_response :success
  end

  test "should get update" do
    get roasters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get roasters_destroy_url
    assert_response :success
  end
end
