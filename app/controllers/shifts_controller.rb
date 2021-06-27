class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.create
    redirect_to shifts_path
  end
end
