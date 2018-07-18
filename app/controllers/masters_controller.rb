class MastersController < ApplicationController
    def index
        #this instance variable "SELECT "pokemons".* FROM "pokemons"
        @masters = Master.all
    end

    def show

        @master = Master.find(params[:id])
    
        #deal with the case that we are trying to get a master for a pokemon that doesn't exist
  
      if params[:pokemon_id].to_i != @master.pokemon.id
        # do something
      end
    end

    def new
        @pokemons = Pokemon.all
        #renders new.html.erb in views folder because they have the same name 
    end

    def create
        @master = Master.new(master_params)
  
        @master.save
        redirect_to masters_path

    end

    def edit
        @master = Master.find(params[:id])
        @pokemons = Pokemon.all
    
    end
    
    def update
        @master = Masters.find(params[:id])

        @master.update(master_params)
        redirect_to masters_path
    end
  
    def destroy
        @master = Master.find(params[:id])
        @master.destroy
      
        redirect_to masters_path

    end
    
    def master_params
        params.require(:master).permit(:name, :pokemon_id)
    end
end