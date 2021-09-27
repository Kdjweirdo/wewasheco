class WelcomeController < ApplicationController 
    def home
    end

    def services
    end

    def contact 
     @renseignement = Renseignement.new
    end
end