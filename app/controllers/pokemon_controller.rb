class PokemonController < ApplicationController

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
