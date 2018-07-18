Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "genres#index"
  resources :genres do
    resources :songs
  end

  resources :songs


#            root GET    /                                          genres#index
#     genre_songs GET    /genres/:genre_id/songs(.:format)          songs#index
#                 POST   /genres/:genre_id/songs(.:format)          songs#create
#  new_genre_song GET    /genres/:genre_id/songs/new(.:format)      songs#new
# edit_genre_song GET    /genres/:genre_id/songs/:id/edit(.:format) songs#edit
#      genre_song GET    /genres/:genre_id/songs/:id(.:format)      songs#show
#                 PATCH  /genres/:genre_id/songs/:id(.:format)      songs#update
#                 PUT    /genres/:genre_id/songs/:id(.:format)      songs#update
#                 DELETE /genres/:genre_id/songs/:id(.:format)      songs#destroy
#          genres GET    /genres(.:format)                          genres#index
#                 POST   /genres(.:format)                          genres#create
#       new_genre GET    /genres/new(.:format)                      genres#new
#      edit_genre GET    /genres/:id/edit(.:format)                 genres#edit
#           genre GET    /genres/:id(.:format)                      genres#show
#                 PATCH  /genres/:id(.:format)                      genres#update
#                 PUT    /genres/:id(.:format)                      genres#update
#                 DELETE /genres/:id(.:format)                      genres#destroy
#           songs GET    /songs(.:format)                           songs#index
#                 POST   /songs(.:format)                           songs#create
#        new_song GET    /songs/new(.:format)                       songs#new
#       edit_song GET    /songs/:id/edit(.:format)                  songs#edit
#            song GET    /songs/:id(.:format)                       songs#show
#                 PATCH  /songs/:id(.:format)                       songs#update
#                 PUT    /songs/:id(.:format)                       songs#update
#                 DELETE /songs/:id(.:format)                       songs#destroy
end
