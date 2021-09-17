class WelcomeController < ApplicationController 
    def home
    end

    def services
    end

    def contact 
     @info = Info.new
    end
end