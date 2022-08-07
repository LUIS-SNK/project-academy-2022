class AregistrationController < ApplicationController
    def new
        @artist = Artist.new
    end
    def create
        @artist = Artist.new(artist_params)
    
        respond_to do |format|
          @artist.save
          end
    end

    private
    def artist_params
      params.require(:artist).permit(:name, :created_at)
    end
end