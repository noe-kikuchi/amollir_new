class Admin::RestaurantsController < ApplicationController
  before_action :if_not_admin, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

end
