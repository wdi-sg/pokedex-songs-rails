Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :master do
    resources :pokemon
  end

  resources :pokemon

  root "index#pokemon"

end
