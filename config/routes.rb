Rails.application.routes.draw do
  resources :folders

  devise_for :users, path: "/"

  root to: "static#index"
end
