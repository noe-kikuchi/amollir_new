class KarutesController < ApplicationController
  def index
    @users = User.where.not(id: current_user.id) 
  end

  def new
    @karute = Karute.new

  end

  def create
    @karute = Karute.new(karute_params)
    @karute.user_id = params[:user_id]
    if @karute.save
      redirect_to user_path(@karute.user_id)
    else
      render :new
    end
  end

  def show
    unless @karute.present?
      render :new
    else
      @karute = Karute.find(params[:id])
      @karute = Karute.new
    end
  end

  private

  def karute_params
    params.require(:karute).permit(:pain, :illness, :history, :medicine, :habit, :memo, :date)
  end
end
# .merge(user_id: @karute.user_id)
# .merge(user_id: params[:user_id])
# .require(:karute)
# .merge(user_id: params[:user_id])
# .merge(user_id: current_user.id)
# @karute.user_id = @user.id



    # @user_id = @karute.user.id
    # @karute = @user.karute
    # , notice: '保存できませんでした'