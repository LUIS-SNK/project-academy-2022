class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
  end

  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      @artist.save
      end
  end

  def edit
    @artist= Artist.find(params[:id])
    render :edit
  end

  def destroy
    @artist = Artist.find(params[:id])
       redirect_to artist_url
end
  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def load_artist
    @artist = Artist.find(params[:artist_id])
  end

    def artist_params
    params.require(:artist).permit(:name, :created_at)
    end
end