class PokemonsController < ApplicationController
    
  def index
      @pokemons = Pokemon.all
  end

  def show
      @pokemons = Pokemon.find(params[:id])
  end

  def new
  end

  def edit
      @pokemons = Pokemon.find(params[:id])
  end

  def create
      @pokemons = Pokemon.new(pokemon_params)

      @pokemons.save
      redirect_to root_path
  end

  def update
      @pokemons = Pokemon.find(params[:id])

      @pokemons.update(pokemon_params)
      redirect_to root_path
  end

  def destroy
      @pokemons = Pokemon.find(params[:id])
      @pokemons.destroy
    
      redirect_to root_path
  end

  private
  def pokemon_params
      params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time, :created_at, :updated_at)
  end
end