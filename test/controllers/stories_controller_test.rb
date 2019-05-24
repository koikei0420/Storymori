require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test 'get stories expect success' do
    get api_stories_path
    assert_response :success
  end

  test 'post stories expect success' do
    post api_stories_path, params: { title: 'new story', text: 'abcdefghijklmn1234567890' }
    assert_response :success
  end

  test 'post stories expect fault' do
    post api_stories_path, params: { title: 'new story', text: '' }
    assert_response :unprocessable_entity
  end

  test 'post) return JSON is { storyId, pageId } expect { 1, 1 }' do
    post api_stories_path, params: { title: 'new story', text: 'abcdefghijklmn1234567890' }
    response = JSON.parse(@response.body)
    assert_equal response['storyId'], 1
    assert_equal response['pageId'], 1
  end
end
