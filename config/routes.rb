Rails.application.routes.draw do
  devise_for :users
  resources :grades
  root to: "grades#index"
end
