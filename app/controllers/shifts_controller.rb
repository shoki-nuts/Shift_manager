class ShiftsController < ApplicationController

  def index
    @shifts = current_user.shifts.all
  end

  def new
    @shift = current_user.shifts.new
  end

  def create
    @shift = current_user.shifts.create(shift_parameter)
    redirect_to shifts_path
  end

  private

  def shift_parameter
    params.require(:shift).permit(:user, :date, :start_at, :end_at)
  end
end
