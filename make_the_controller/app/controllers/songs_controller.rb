class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])

    # @song = Song.new(:name => params[:song][:name])
    # @song.build_artist(:name => params[:song][:artist])

    # @song = Song.new(:name => params[:song][:name])
    # @song.artist = Artist.find_by_name(params[:song][:artist])  
    if @song.save
      redirect_to @song, notice: 'Song was successfully created.'
    else
      render action: "new"
    end
  end
end