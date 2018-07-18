class PokemonsController < ApplicationController
    def index
        #this instance variable "SELECT "pokemons".* FROM "pokemons"
        @pokemons = Pokemon.all
    end

    def show
        #  SELECT  "pokemons".* FROM "pokemons" WHERE "pokemons"."id" = $1
        @pokemon = Pokemon.find(params[:id])
    end

    def new
        #renders new.html.erb in views folder because they have the same name
        
    end

    def create

        @pokemon = Pokemon.new(pokemon_params)

        @pokemon.save
        redirect_to root_path
         # redirect to root_path. but can redirect to any created paths
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end
    
    def update
        @pokemon = Pokemon.find(params[:id])

        @pokemon.update(pokemon_params)
        redirect_to pokemon_path
    end
  
    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
      
        redirect_to root_path
    end
    
    
    def pokemon_params
        params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
      end
  end