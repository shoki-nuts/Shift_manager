class AdminsController < ApplicationController
  def admin_setting
  end

  def member_index
    @members = current_user.followers.all
  end

  def member_setting
  end
end
