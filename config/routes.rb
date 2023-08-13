Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "articles#create"
  delete "/logout", to: "articles#destroy"
  get "/me", to: "articles#show"
end
