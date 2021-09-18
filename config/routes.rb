Rails.application.routes.draw do

  root 'welcome#index'
  resources :dashboard, only: :index
  get '/auth/google_oauth2/callback', to: 'sessions#create'
end
