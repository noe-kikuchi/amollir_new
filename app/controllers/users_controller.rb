class UsersController < ApplicationController
  # def new
  #   @user = User.new
  # end
  
  # def create
  #   @user = User.new(user_params)
  # end

  def show
    @user = User.find(params[:id])
  end

  # private

  # def user_parans
  #   params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :birth_date_id, :phone_number)
  # end
end


    # @karute = Karute.find_by(id: params[:id])
    # @karute = @user.karute
    # @karute = User.find_by(id: @karute.user_id)
