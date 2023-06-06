require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get show" do
    get posts_show_url
    assert_response :success
  end

  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get create" do
    get posts_create_url
    assert_response :success
  end

  test "should get edit" do
    get posts_edit_url
    assert_response :success
  end

  test "should get update" do
    get posts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get posts_destroy_url
    assert_response :success
  end

  test "should get like" do
    get posts_like_url
    assert_response :success
  end

  test "should get dislike" do
    get posts_dislike_url
    assert_response :success
  end
end
