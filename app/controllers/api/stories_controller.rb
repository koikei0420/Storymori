class Api::StoriesController < ApplicationController
  # saveStories End-point
  def create
    # save story in database
    story = Story.create!(title: story_params[:title], summary: story_params[:text][0, 10])

    # seve first page in database
    page = Page.create!(name: story_params[:title], text: story_params[:text], story_id: story.id)

    # return story id / story object
    render json: { storyId: story.id, pageId: page.id }, status: 200
  rescue ActiveRecord::RecordInvalid
    render json: { error: "ページが表示できません"}, status: 422 #validation error
  end

  private
  def story_params
    params.permit(:title, :text)
  end
end
