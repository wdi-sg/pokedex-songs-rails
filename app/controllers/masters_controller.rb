class MastersController < ApplicationController

	def index

		if params.has_key?(:pokemon_id)

			@masters = Master.where(pokemon_id: params[:pokemon_id])
			@pokemon = Pokemon.find(params[:pokemon_id])

		else

			@masters = Master.all

		end

	end

	def new
		@pokemons = Pokemon.all.order(:id)
	end

	def create
		@master = Master.create(master_params)

		redirect_to @master
	end

	def show

		@master = Master.find(params[:id])
	end

	def edit
		@master = Master.find(params[:id])
		@pokemons = Pokemon.all.order(:id)
	end

	def update

		@master = Master.find(params[:id])
		@master.update(master_params)

		redirect_to @master
	end

	def destroy

		@master = Master.find(params[:id])
		@master.destroy

		redirect_to masters_path

	end


	private
	def master_params
		params.require(:master).permit(:name, :img, :pokemon_id)
	end


end