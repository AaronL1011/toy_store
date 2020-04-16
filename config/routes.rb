Rails.application.routes.draw do
  get "/toys", to: "toys#index", as: :home
  get "/toys/:id", to: "toys#show", as: :show
  post "/toys", to: "toys#create"
  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"
  delete "/toys/:id", to: "toys#index"
end
