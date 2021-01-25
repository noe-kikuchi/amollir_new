class PatientAddressesController < ApplicationController
  before_action :if_not_admin
  
  def new
    @patient_address = PatientAddress.new
  end

  def create
    @patient_address = PatientAddress.new(patient_address_params)
    @patient_address.patient_id = params[:patient_id]
    if @patient_address.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def patient_address_params
    params.require(:patient_address).permit(:postal_code, :prefecture_id, :city, :address, :building_name, :phone_number)
  end

  def if_not_admin
    redirect_to root_path unless current_user && current_user.admin?
  end

end

# .merge(patient_id: params[:patient.id])