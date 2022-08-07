class MovieGenresController < ApplicationController
    def index
    @moviegenres = MovieGenre.all
    end

    def new
    @moviegenre = MovieGenre.new
    end
    
    def show
    end
    
    def create
        @moviegenre = MovieGenre.new(movie_genres_params)
    
        respond_to do |format|
          @moviegenre.save
        end
    end
    
    def edit
        @moviegenre= MovieGenre.find(params[:id])
        render :edit
    end
    
    private

    def load_movie_genre
        @moviegenre = MovieGenre.find(params[:movie_genres_id])
    end
    
    def movie_genres_params
        params.require(:movie_genres).permit(:name, :created_at)
    end
end
