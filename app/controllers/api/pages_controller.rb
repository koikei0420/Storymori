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
        return render json: { id: page.id }, status: 201
      end
      render json: { error: 'Validation error' }, status: 422
    else
      render json: { error: 'Given story_id or page_id is not found '}, status: 404
    end
  end

  # getPage end-point
  def show
    page = Page.find(params[:id]).as_json(include: [:children])
    render json: page, status: 200
  end

  private
  def page_params
    params.permit(:id, :page_id, :story_id, :name, :text)
  end
end