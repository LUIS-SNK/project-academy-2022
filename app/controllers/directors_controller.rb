class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def show
  end

  def create
    @director = Director.new(director_params)

    respond_to do |format|
      @director.save
      end
  end

  def edit
    @director= Director.find(params[:id])
    render :edit
  end

  private
  def load_artist
    @director = Director.find(params[:director_id])
  end

    def director_params
    params.require(:director).permit(:name, :created_at)
    end
end
