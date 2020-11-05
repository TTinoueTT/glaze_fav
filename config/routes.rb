Rails.application.routes.draw do
  root to: 'glaze_fav#top'
  get 'glaze_fav/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :materials
end

#        Prefix Verb   URI Pattern                      Controller#Action
#   glaze_fav_top GET    /glaze_fav/top(.:format)       glaze_fav#top
# glaze_fav_about GET    /glaze_fav/about(.:format)     glaze_fav#about

#     materials GET    /materials(.:format)             materials#index
#               POST   /materials(.:format)             materials#create
#  new_material GET    /materials/new(.:format)         materials#new
# edit_material GET    /materials/:id/edit(.:format)    materials#edit
#      material GET    /materials/:id(.:format)         materials#show
#               PATCH  /materials/:id(.:format)         materials#update
#               PUT    /materials/:id(.:format)         materials#update
#               DELETE /materials/:id(.:format)         materials#destroy
