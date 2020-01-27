Rails.application.routes.draw do
  devise_for :users
  root to: 'main#main'

  get '/profile',     to: 'users#profile'
  get '/recipe/:id',  to: 'recipies#show', as: 'show_recipe'

  # admin-panel

  get '/admin/recipe/', to: 'admin#recipe_index', as: 'show_admin_recipe_index'
end
