class Api::StoriesController < ApplicationController
  def create
    #############################
    # validation part (not yet) #
    #############################

    # get params
    @request = { title: params[:title], text: params[:text] }

    # save story in database
    story = Story.create(title: @request[:title], summary: @request[:text][0, 10])

    # seve first page in database
    page = Page.create(name: @request[:title], text: @request[:text], story_id: story.id)

    # return story id / story object
    render json: { storyId: story.id, pageId: page.id }

    #################################
    # error handling part (not yet) #
    #################################
  end
end
