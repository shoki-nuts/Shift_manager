class RelationshipsController < ApplicationController

    def create
        post = Post.find(params[:post_id])
        @relationship = post.relationships.create(member_id: current_user.id)
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        post = Post.find(params[:post_id])
        @relationship = post.relationships.find_by(member_id: current_user.id)
        @relationship.destroy
        redirect_back(fallback_location: root_path)
    end

end
