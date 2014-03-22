Rails.application.routes.draw do
  devise_for :users, path: "/"

  root to: "static#index"
end
