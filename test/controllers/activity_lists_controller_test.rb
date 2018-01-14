require 'test_helper'

class ActivityListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_list = activity_lists(:one)
  end

  test "should get index" do
    get activity_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_list_url
    assert_response :success
  end

  test "should create activity_list" do
    assert_difference('ActivityList.count') do
      post activity_lists_url, params: { activity_list: { main_image: @activity_list.main_image, name: @activity_list.name, theme: @activity_list.theme, thumb_image: @activity_list.thumb_image } }
    end

    assert_redirected_to activity_list_url(ActivityList.last)
  end

  test "should show activity_list" do
    get activity_list_url(@activity_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_list_url(@activity_list)
    assert_response :success
  end

  test "should update activity_list" do
    patch activity_list_url(@activity_list), params: { activity_list: { main_image: @activity_list.main_image, name: @activity_list.name, theme: @activity_list.theme, thumb_image: @activity_list.thumb_image } }
    assert_redirected_to activity_list_url(@activity_list)
  end

  test "should destroy activity_list" do
    assert_difference('ActivityList.count', -1) do
      delete activity_list_url(@activity_list)
    end

    assert_redirected_to activity_lists_url
  end
end
