Rails.application.routes.draw do
  get "/", to: "pages#home", as: "root"
  devise_for :users
  resources :toys
  resources :manufacturers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
