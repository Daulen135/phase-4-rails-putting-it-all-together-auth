Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
post "/recipes", to: "recipes#create"

get "/recipes", to: "recipes#index"

post "/signup", to: "users#create"
post "/login", to: "recipes#login"
delete  "/logout", to: "sessions#destroy"
end
