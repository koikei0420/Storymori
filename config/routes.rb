Rails.application.routes.draw do
  namespace :api do
    resources :stories, only: [:create, :index]
  end
end
