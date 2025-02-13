Rails.application.routes.draw do
  devise_for :admins
  root to: "home#index"

  match "/dashboard", to: "home#dashboard", as: :dashboard, via: [:get]

  devise_for :users
end
