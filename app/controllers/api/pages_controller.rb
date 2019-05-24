class Api::PagesController < ApplicationController
  # savePage end-point
  def create
    if Page.where(story_id: page_params[:story_id], page_id: page_params[:page_id]).exists?
      page = Page.new(
        name: page_params[:name],
        text: page_params[:text],
        story_id: page_params[:story_id],
        page_id: page_params[:page_id]
      )
      if page.save
        render json: { pageId: page.page_id }, status: 201
      else
        render json: { error: 'Validation error' }, status: 422
      end
    else
      render json: { error: 'Given story_id or page_id is not found '}, status: 404
    end
  end

  # getPage end-point
  def show
    render plain: 'not yet'
  end

  private
  def page_params
    params.permit(:story_id, :page_id, :name, :text)
  end
end
