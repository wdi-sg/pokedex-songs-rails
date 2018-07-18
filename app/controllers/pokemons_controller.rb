class PokemonsController < ApplicationController

    def index
        @pokemons = Pokemon.all
    end
  
    def show
        @pokemon = Pokemon.find(params[:id])
    end
  
  
    def edit
        @pokemon = Pokemon.find(params[:id])
    end
  
    def create
        @pokemon = Pokemon.new(pokemon_params)
  
        @pokemon.save
        redirect_to @pokemon
    end
  
    def update
        @pokemon = Pokemon.find(params[:id])

        @pokemon.update(pokemon_params)
        redirect_to @pokemon
    end
  
    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy

        redirect_to pokemons_path
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:num, :name, :img, :weight, :height)
    end

end
