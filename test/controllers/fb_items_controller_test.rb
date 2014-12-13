require 'test_helper'

class FbItemsControllerTest < ActionController::TestCase
  setup do
    @fb_item = fb_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fb_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fb_item" do
    assert_difference('FbItem.count') do
      post :create, fb_item: { comments_count: @fb_item.comments_count, content: @fb_item.content, fb_id: @fb_item.fb_id, fb_time: @fb_item.fb_time, likes_count: @fb_item.likes_count, user_id: @fb_item.user_id }
    end

    assert_redirected_to fb_item_path(assigns(:fb_item))
  end

  test "should show fb_item" do
    get :show, id: @fb_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fb_item
    assert_response :success
  end

  test "should update fb_item" do
    patch :update, id: @fb_item, fb_item: { comments_count: @fb_item.comments_count, content: @fb_item.content, fb_id: @fb_item.fb_id, fb_time: @fb_item.fb_time, likes_count: @fb_item.likes_count, user_id: @fb_item.user_id }
    assert_redirected_to fb_item_path(assigns(:fb_item))
  end

  test "should destroy fb_item" do
    assert_difference('FbItem.count', -1) do
      delete :destroy, id: @fb_item
    end

    assert_redirected_to fb_items_path
  end
end
