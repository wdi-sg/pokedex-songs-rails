class PokemonmasterController < ApplicationController
   def index
      @pokemons = Pokemon.all
   end
 
   def show
      @pokemons = Pokemon.find(params[:id])
   end
 
   def new
   end

   def create
   end
 
   def edit
   end

   def update
   end
 
   def destroy
   end

   private

   def pokemons_params
     params.require(:pokemons).permit(:id, :num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
   end
end
