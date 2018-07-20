class PokemonmastersController < ApplicationController
   def index
      @pokemonmaster = Pokemonmaster.all
   end
 
   def show
      @pokemonmaster = Pokemonmaster.find(params[:id])
   end
 
   def new
    @pokemons = Pokemon.all
   end

   def create
    @pokemonmaster = Pokemonmaster.new(pokemonmaster_params)
    @pokemonmaster.save
    redirect_to @pokemonmaster
   end
 
   def edit
   end

   def update
   end
 
   def destroy
   end

   private

   def pokemonmaster_params
     params.require(:pokemonmasters).permit(:name, :pokemon_id)
   end
end
