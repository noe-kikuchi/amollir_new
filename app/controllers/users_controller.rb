class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end


    # @karute = Karute.find_by(id: params[:id])
    # @karute = @user.karute
    # @karute = User.find_by(id: @karute.user_id)
