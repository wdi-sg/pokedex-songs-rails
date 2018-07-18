Rails.application.routes.draw do
  resources :pokemons

  root 'pokemons#index'

  resources :pokemons do
    resources :master
  end
  resources :master

end