class KarutesController < ApplicationController
  before_action :if_not_admin, except: [:index]
  
  def index
    @patients = Patient.order :family_name_kana, :first_name_kana
    # where.not(id: current_user.id) 
    # .all
  end

  def new
    @karute = Karute.new

  end

  def create
    @karute = Karute.new(karute_params)
    @karute.patient_id = params[:patient_id]
    if @karute.save
      redirect_to patient_path(@karute.patient_id)
    else
      render :new
    end
  end

  def edit
    @karute = Karute.find(params[:id])
    @karute.patient_id = params[:patient_id]
  end

  def update
    @karute = Karute.find(params[:id])
    if @karute.update(karute_params)
      redirect_to patient_path(@karute.patient_id)
    else
      render :edit
    end
  end
      
  private

  def karute_params
    params.require(:karute).permit(:pain, :illness, :history, :medicine, :habit, :memo, :date)
  end

  def if_not_admin
    redirect_to root_path unless current_user && current_user.admin?
  end

end
