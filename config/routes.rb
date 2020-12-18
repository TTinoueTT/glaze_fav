Rails.application.routes.draw do
  root to: 'glaze_fav#top'
  get 'glaze_fav/about'

  namespace :admin do
    resources :users
    # get 'users/new'
    # get 'users/edit'
    # get 'users/show'
    # get 'users/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :materials do
    # resources :molnum, only: [:index]
  end
  # get 'molnum/index', to: 'materials#molnum_index'
end

#        Prefix   Verb   URI Pattern                      Controller#Action
#            root GET    /glaze_fav/top(.:format)         glaze_fav#top
# glaze_fav_about GET    /glaze_fav/about(.:format)       glaze_fav#about
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
