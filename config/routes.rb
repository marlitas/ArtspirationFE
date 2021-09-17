Rails.application.routes.draw do
  resources :dashboard, only: :index do
  end

  namespace :dashboard do
    resources :artworks, only: :index
  end
end
