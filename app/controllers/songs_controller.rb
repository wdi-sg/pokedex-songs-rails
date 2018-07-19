class SongsController < ApplicationController

  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    if params.has_key?(:genre_id)
      @songs = Song.where(genre_id: params[:genre_id])
    else
      @songs = Song.all
    end
  end

  def new
    @genres = Genre.all
  end

  def create
    @song = Song.new(song_params)

    @song.save
    redirect_to @song
  end

  def show
    @songs = Song.find([params[:id]])
    render "index"
  end

  def edit
    @song = Song.find(params[:id])
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

  def song_params
    params.require(:song).permit(:name, :genre_id)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end