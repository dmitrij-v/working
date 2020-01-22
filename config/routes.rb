Rails.application.routes.draw do
  devise_for :users
  root to: 'main#main'

  get '/profile', to: 'users#profile'
end
