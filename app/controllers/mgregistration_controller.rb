class MgregistrationController < ApplicationController
    def new
        @moviegenres = MovieGenre.new
      end
  
      def create
        @moviegenre = MovieGenre.new(movie_genres_params)
    
        respond_to do |format|
          @moviegenre.save
        end

      end
  
      private
      
      def movie_genres_params
        params.require(:movie_genre).permit(:name, :created_at)
      end
  
end