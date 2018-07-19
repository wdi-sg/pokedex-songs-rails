class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @songs = Song.all
  end

  def create
    @genre = Genre.new(genre_params)

    @genre.save
    redirect_to @genre
  end

  def show
    @genres = Genre.find([params[:id]])
    render "index"
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to @genre
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_path
  end

private

  def genre_params
    params.require(:genre).permit(:name, :description)
  end

end