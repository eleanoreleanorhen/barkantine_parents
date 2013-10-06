require 'test_helper'

class BirthStoriesControllerTest < ActionController::TestCase
  setup do
    @birth_story = birth_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birth_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birth_story" do
    assert_difference('BirthStory.count') do
      post :create, birth_story: { content: @birth_story.content, title: @birth_story.title }
    end

    assert_redirected_to birth_story_path(assigns(:birth_story))
  end

  test "should show birth_story" do
    get :show, id: @birth_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birth_story
    assert_response :success
  end

  test "should update birth_story" do
    put :update, id: @birth_story, birth_story: { content: @birth_story.content, title: @birth_story.title }
    assert_redirected_to birth_story_path(assigns(:birth_story))
  end

  test "should destroy birth_story" do
    assert_difference('BirthStory.count', -1) do
      delete :destroy, id: @birth_story
    end

    assert_redirected_to birth_stories_path
  end
end
