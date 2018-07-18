class PokemonsController < ApplicationController

	def index
		@pokemons = Pokemon.all.order(:id)
	end

	def new
	end

	def create
		@pokemon = Pokemon.create(pokemon_params)

		redirect_to @pokemon
	end

	def show

		begin

			@pokemon = Pokemon.find(params[:id])

			# # Doesn't work!!
			# if @pokemon.img == nil

			# 	@pokemon.img = "\"http://www.serebii.net/pokemongo/pokemon/032.png\""
			# end

		# if the id does not return any results 
		rescue StandardError => msg

			render plain: msg

		end

	end

	def edit

		@pokemon = Pokemon.find(params[:id])
	end

	def update

		@pokemon = Pokemon.find(params[:id])

		@pokemon.update(pokemon_params)

		redirect_to @pokemon
	end

	def destroy

		@pokemon = Pokemon.find(params[:id])

		@pokemon.destroy

		redirect_to pokemons_path
	end


	private
	# giving permission to the form to set these data in the db
	# used in create function
	def pokemon_params
    	params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
  	end

end