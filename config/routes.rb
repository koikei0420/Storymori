Rails.application.routes.draw do
  namespace :api do
    resource :stories, only: [:create, :index]
  end
end
