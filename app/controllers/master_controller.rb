class MasterController < ApplicationController

    def new
      @master = Master.all
    end
  
    def create
      @master = Master.new(master_params)
  
      @master.save
      redirect_to @master
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