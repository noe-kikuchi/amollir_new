class KarutesController < ApplicationController
  def index
    @users = User.all
    # where.not(id: current_user.id) 
    # .all
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

  def edit
    @karute = Karute.find(params[:id])
    @karute.user_id = params[:user_id]
  end

  def update
    @karute = Karute.find(params[:id])
    if @karute.update(karute_params)
      redirect_to root_path
    else
      render :edit
    end
  end
      
  private

  def karute_params
    params.require(:karute).permit(:pain, :illness, :history, :medicine, :habit, :memo, :date)
  end
end
