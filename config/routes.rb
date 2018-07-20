Rails.application.routes.draw do

  resources :pokemons do
    resources :pokemonmasters
  end
  
  resources :pokemonmasters

  root "pokemonmasters#index"

end
