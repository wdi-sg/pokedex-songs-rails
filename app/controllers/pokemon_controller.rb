
class PokemonController < ApplicationController

    def index
        @pokemons = Pokemon.all
    end
    
    def show
        @pokemon = Pokemon.find(params[:id])
    end
    
    def new
    end
    
    def create
        @pokemons = Pokemon.new(pokemon_params)
    
        @pokemons.save
        redirect_to pokemon_index_path
    end
    
    def update
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(pokemon_params)
        redirect_to pokemon_index_path
    end 
    
    def edit
        @pokemon = Pokemon.find(params[:id])
    end
    
    def destroy
        @pokemon = Pokemon.find(params[:id])
    
        @pokemon.destroy
        redirect_to pokemon_index_path
    end
    
private
    
    def pokemon_params
        params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
    end
    
end
          