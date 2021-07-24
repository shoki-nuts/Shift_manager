class SerchesController < ApplicationController
    def index
        @posts = Post.all
    end
    

    
end
