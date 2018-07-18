class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to root_path
  end

  private
    def genre_params
      params.require(:genre).permit(:name, :description)
    end

end
