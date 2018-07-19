Rails.application.routes.draw do

  resources :pokemon do
    resources :pokemonmaster
  end
  
  resources :pokemonmaster

  root "pokemonmaster#index"

end
