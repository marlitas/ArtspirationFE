Rails.application.routes.draw do
  resources :dashboard, only: :index
end
