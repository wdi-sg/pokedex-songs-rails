class CharactersController < ApplicationController
    def index
        @character = Character.all.order(level: :desc)
    end

    def show
        @character = Character.find(params[:id])
    end

    def new
    end

    def edit
        @character = Character.find(params[:id])
    end

    def create
        @character = Character.new(character_params)

        @character.save
        redirect_to @character
    end

    def update
        @character = Character.find(params[:id])

        @character.update(character_params)
        redirect_to @character
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy

        redirect_to characters_path
    end

#   private
#     def character_params
#         params.require(:character).permit(:crafter_class , :short_name , :img)
#     end
#end
end
