Rails.application.routes.draw do
  namespace :api do
    resources :stories, only: [:create, :index] do
      resources :pages, only: [:show] do
        post '/next', to: 'pages#create'
      end
    end
  end
end
