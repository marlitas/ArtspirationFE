Rails.application.routes.draw do
  namespace :dashboard do
    resources :artworks, only: [:index, :show, :update]
  end

  root 'welcome#index'
  resources :dashboard, only: :index
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
