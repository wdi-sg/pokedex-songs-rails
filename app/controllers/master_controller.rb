class MasterController < ApplicationController

  def index
    if params.has_key?(:pokemon_id)
      @masters = Master.where(pokemon_id: params[:pokemon_id] )
    else
      @masters = Master.all
    end

  end

  def new
    @pokemons = Pokemon.all
  end

  def create
    byebug
  end


  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @master = Master.find(params[:id])

    if params[:pokemon_id].to_i != @master.pokemon.id
      # do something
    end
  end

private

  def master_params
    params.require(:master).permit(:name, :pokemon_id)
  end
end