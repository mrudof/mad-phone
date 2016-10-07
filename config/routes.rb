Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#index"

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy"
end