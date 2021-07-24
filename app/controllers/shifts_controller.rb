class ShiftsController < ApplicationController
  before_action :set_shift, {only:[:show, :edit, :update, :destroy]}
  before_action :authenticate_user!

  def index
      @shifts = current_user.shifts.all
  end

  def show
  end

  def new
    @posts = Post.all
    @shift = current_user.shifts.new
  end

  def edit
    @posts = Post.all
  end

  def create
    @shift = current_user.shifts.create(shift_parameter)
    redirect_to shifts_path
  end

  def update
    @shift.update(shift_parameter)
    redirect_to shifts_path
  end

  def destroy
    @shift.destroy
    redirect_to shifts_path
  end

  private

  def set_shift
    @shift = current_user.shifts.find(params[:id])
  end

  def shift_parameter
    params.require(:shift).permit(:user, :start_time, :punch_in, :punch_out ,:post_id)
  end
end
