class PatientAddressesController < ApplicationController
  before_action :if_not_admin
  
  def new
    @patient_address = PatientAddress.new
  end

  def create
    @patient_address = PatientAddress.new(patient_address_params)
    @patient_address.patient_id = params[:patient_id]
    if @patient_address.save
      redirect_to patient_path(@patient_address.patient_id)
    else
      render :new
    end
  end

  def edit
    @patient_address = PatientAddress.find(params[:id])
    @patient_address.patient_id = params[:patient_id]
  end

  def update
    @patient_address = PatientAddress.find(params[:id])
    if @patient_address.update(patient_address_params)
      redirect_to patient_path(@patient_address.patient_id)
    else
      render :edit
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