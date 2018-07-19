class MasterController < ApplicationController

  def index
    @masters = Master.all
  end

  def new
    @pokemons = Pokemon.all
    #renders new.html.erb in views folder because they have the same name
  end
  
  def show
    @masters = Master.find(params[:id])
    #cases when trying to get a master for the pokemon that does not exist

    if(parmams[:pokemon_id].to_i != @master.pokemon.id)
      puts "master does not exists"
    end
  end

  def create
    @master = Master.new(master_params)

    @master.save
    redirect_to master_index_path
  end

  def update
    @master = Master.find(params[:id])

    @master.update(master_params)
    redirect_to master_index_path

  end

  def edit
    @master = Master.find(params[:id])
    @pokemons = Pokemon.all

  end

  def destroy
    @master = Master.find(params[:id])

    @master.destroy
    redirect_to master_index_path
  end

  private

  def master_params
    params.require(:master).permit(:name, :pokemon_id)
  end

end  