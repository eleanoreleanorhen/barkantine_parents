require 'test_helper'

class ResourcesAndLinksControllerTest < ActionController::TestCase
  setup do
    @resources_and_link = resources_and_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources_and_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resources_and_link" do
    assert_difference('ResourcesAndLink.count') do
      post :create, resources_and_link: { content: @resources_and_link.content, title: @resources_and_link.title }
    end

    assert_redirected_to resources_and_link_path(assigns(:resources_and_link))
  end

  test "should show resources_and_link" do
    get :show, id: @resources_and_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resources_and_link
    assert_response :success
  end

  test "should update resources_and_link" do
    put :update, id: @resources_and_link, resources_and_link: { content: @resources_and_link.content, title: @resources_and_link.title }
    assert_redirected_to resources_and_link_path(assigns(:resources_and_link))
  end

  test "should destroy resources_and_link" do
    assert_difference('ResourcesAndLink.count', -1) do
      delete :destroy, id: @resources_and_link
    end

    assert_redirected_to resources_and_links_path
  end
end
