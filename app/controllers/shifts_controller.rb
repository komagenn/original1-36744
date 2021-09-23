class ShiftsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @shifts = Shift.all
  end

  def new
    @shifts = Shift.all
  end
  def show
    @shifts = Shift.all
  end

  private
  def shift_params
    params.require(:shift).permit(:work_id, :hour_id, :sum, :holiday).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
