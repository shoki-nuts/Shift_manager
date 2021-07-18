class SerchesController < ApplicationController
    def index
        @users = User.all
    end

    
end
