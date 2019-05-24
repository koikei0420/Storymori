class Api::PagesController < ApplicationController
  # savePage end-point
  def create
    if Page.where(story_id: page_params[:story_id], id: page_params[:page_id]).exists?
      page = Page.new(
        name: page_params[:name],
        text: page_params[:text],
        story_id: page_params[:story_id],
        parent_id: page_params[:page_id]
      )
      if page.save
        render json: { pageId: page.id }, status: 201
      else
        render json: { error: 'Validation error' }, status: 422
      end
    else
      render json: { error: 'Given story_id or page_id is not found '}, status: 404
    end
  end

  # getPage end-point
  def show
    results = Page.select('id, name, text').where(id: page_params[:page_id], story_id: page_params[:story_id])
    if results.exists?
      render json: { error: 'Given story_id or page_id is not found '}, status: 404
    end
    children = Page.select('id, name').where(parent_id: page_params[:page_id])
    render json: results.to_json(children: children), status: 200
  end

  private
  def page_params
    params.permit(:story_id, :page_id, :name, :text)
  end
end
