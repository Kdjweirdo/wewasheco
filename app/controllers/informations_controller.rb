class InformationsController < ApplicationController
    def index 
        @informations = Information.all
    end

    def new
        @information = Information.new
    end
    def create
        @information = Information.new(information_params)

        if @information.save
          redirect_to information_path(@information)
        else
          render :new
        end
    end  
    
      private
        def information_params
          params.require(:information).permit(:type, :name, :email, :telephone, :description)
        end
    
end