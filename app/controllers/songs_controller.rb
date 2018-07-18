class SongsController < ApplicationController
  # before action runs the find_song method
  # defined below, and for the actions 'Edit', 'Update', 'Destroy'
  # so you don't have to keep typing
  # @song = Song.find(params[:id])
  before_action :find_song, only: [:edit, :update, :destroy]

  def index
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      @songs = @genre.songs
    else
      redirect_to root_path
    end
  end

  def new
    @genres = Genre.all
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to root_path
  end

  def edit
    @genres = Genre.all
  end

  def update
    @song.update(song_params)
    redirect_to root_path
  end

  def destroy
    @song = @song.destroy
    redirect_to root_path
  end

  private
    def song_params
      params.require(:song).permit(:name, :genre_id)
    end

    def find_song
      @song = Song.find(params[:id])
    end
end
