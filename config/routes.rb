Rails.application.routes.draw do
  # get 'glazes/index'
  # get 'glazes/show'
  # get 'glazes/new'
  # get 'glazes/edit'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root to: 'glaze_fav#top'
  get 'glaze_fav/about'
  # get '/periodic_table', to: 'glaze_fav#periodic_table'
  resources :periodic_atoms

  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :materials do
    # resources :molnum, only: [:index]
  end
  # get 'molnum/index', to: 'materials#molnum_index'

  resources :glazes
end

#        Prefix       Verb   URI Pattern                      Controller#Action
#           login     GET    /login(.:format)                 sessions#new
#                     POST   /login(.:format)                 sessions#create
#          logout     DELETE /logout(.:format)                sessions#destroy

#            root     GET    /glaze_fav/top(.:format)         glaze_fav#top
# glaze_fav_about     GET    /glaze_fav/about(.:format)       glaze_fav#about

# glazes              GET    /glazes(.:format)                glazes#index
#                     POST   /glazes(.:format)                glazes#create
# new_glaze           GET    /glazes/new(.:format)             glazes#new
# edit_glaze          GET    /glazes/:id/edit(.:format)        glazes#edit
# glaze               GET    /glazes/:id(.:format)             glazes#show
#                     PATCH  /glazes/:id(.:format)             glazes#update
#                     PUT    /glazes/:id(.:format)             glazes#update
#                     DELETE /glazes/:id(.:format)             glazes#destroy

# periodic_atoms      GET    /periodic_atoms(.:format)           periodic_atoms#index
#                     POST   /periodic_atoms(.:format)           periodic_atoms#create
# new_periodic_atom   GET    /periodic_atoms/new(.:format)       periodic_atoms#new
# edit_periodic_atom  GET    /periodic_atoms/:id/edit(.:format)  periodic_atoms#edit
# periodic_atom       GET    /periodic_atoms/:id(.:format)       periodic_atoms#show
#                     PATCH  /periodic_atoms/:id(.:format)       periodic_atoms#update
#                     PUT    /periodic_atoms/:id(.:format)       periodic_atoms#update
#                     DELETE /periodic_atoms/:id(.:format)       periodic_atoms#destroy

#     admin_users GET    /admin/users(.:format)           admin/users#index
#                 POST   /admin/users(.:format)           admin/users#create
#  new_admin_user GET    /admin/users/new(.:format)       admin/users#new
# edit_admin_user GET    /admin/users/:id/edit(.:format)  admin/users#edit
#      admin_user GET    /admin/users/:id(.:format)       admin/users#show
#                 PATCH  /admin/users/:id(.:format)       admin/users#update
#                 PUT    /admin/users/:id(.:format)       admin/users#update
#                 DELETE /admin/users/:id(.:format)       admin/users#destroy

#       materials GET    /materials(.:format)             materials#index
#                 POST   /materials(.:format)             materials#create
#    new_material GET    /materials/new(.:format)         materials#new
#   edit_material GET    /materials/:id/edit(.:format)    materials#edit
#        material GET    /materials/:id(.:format)         materials#show
#                 PATCH  /materials/:id(.:format)         materials#update
#                 PUT    /materials/:id(.:format)         materials#update
#                 DELETE /materials/:id(.:format)         materials#destroy
