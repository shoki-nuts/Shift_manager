class AdminsController < ApplicationController
  def admin_setting
  end

  def member_index
    @posts = current_user.posts.all

  end

  def member_setting
  end
end
