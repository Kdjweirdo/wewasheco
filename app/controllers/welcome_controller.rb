class WelcomeController < ApplicationController 
    def home
    end

    def services
    end

    def contact 
     @tableaus = Tableau.new
    end
end