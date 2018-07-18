class MastersController < ApplicationController

	def index

		if params.has_key?(:pokemon_id) # returns true/false
			# checks the url if there is pokemon_id
			# if it's true then have to find all the masters with that pokemon_id

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

		# need to look for the master to update first; set it as a variable
		@master = Master.find(params[:id])

		# then update that variable. MAGIC!
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
		params.require(:master).permit(:name, :pokemon_id)
	end


end