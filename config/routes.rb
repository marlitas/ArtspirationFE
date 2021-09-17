Rails.application.routes.draw do
  resources :dashboard, only: :index do
    resources :artwork, only: [:index]
  end
end
