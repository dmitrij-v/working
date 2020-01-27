Rails.application.routes.draw do
  devise_for :users
  root to: 'main#main'

  get '/profile',     to: 'users#profile'
  get '/recipe/:id',  to: 'recipies#show', as: 'show_recipe'

  # admin-panel

  get   '/admin/recipe/',         to: 'admin#recipe_index',   as: 'show_admin_recipe_index'
  get   '/admin/recipe/:id',      to: 'admin#show_recipe',    as: 'show_admin_recipe'
  post  '/admin/recipe/:id',      to: 'admin#switch_public',  as: 'switch_public_admin_recipe'
  get   '/admin/recipe/:id/edit', to: 'admin#edit_recipe',    as: 'edit_recipe_admin_recipe'
  patch '/admin/recipe/:id',      to: 'admin#update_recipe',  as: 'update_recipe_admin_recipe'
end
