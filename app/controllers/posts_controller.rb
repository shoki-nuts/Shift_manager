class PostsController < ApplicationController
    before_action :set_post, {only:[:show, :edit, :update, :destroy]}
    before_action :authenticate_user!

    def index
      @posts = current_user.posts.all
    end
  
    def show
    end
  
    def new
      @post = current_user.posts.new
    end
  
    def edit
    end
  
    def create
      @post = current_user.posts.create(post_parameter)
      redirect_to posts_path
    end
  
    def update
      @post.update(shift_parameter)
      redirect_to posts_path
    end
  
    def destroy
      @post.destroy
      redirect_to posts_path
    end
  
    private
  
    def set_post
      @post = current_user.post.find(params[:id])
    end
  
    def post_parameter
      params.require(:post).permit(:user_id, :post_name, :post_address, :deadline_wday, :before_deadline, :shift_cycle)
    end
  
end
