class DregistrationController < ApplicationController
    def new
        @director = Director.new
      end
  
      def create
        @director = Director.new(director_params)
    
        respond_to do |format|
          @director.save
          end
      end
  
      
  
      private
      
      def director_params
        params.require(:director).permit(:name, :created_at)
      end
  
end