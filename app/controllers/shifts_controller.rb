class ShiftsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @shift = Shift.all
  end

  def new
    @shift = Shift.new
  end
  def create
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to root_path
    else
      render new_shift_path
    end
  end

  def show
    @shift = Shift.all
  end

 
  private
  def shift_params
    params.require(:shift).permit(:work_id, :hour_id, :sum_id, :holiday, :remark).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
