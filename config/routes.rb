Rails.application.routes.draw do
  post '/charge', to: 'home#charge'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end