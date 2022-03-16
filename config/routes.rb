Rails.application.routes.draw do
  root 'homes#index'

  devise_for :users
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end

  devise_for :admins
  namespace :admin do
    root "dash_board#index"
    resources :categories
    resources :tables
    resources :dishes
  end
  resources :tables
end
