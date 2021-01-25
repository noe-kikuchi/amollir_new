class PatientsController < ApplicationController
  before_action :if_not_admin

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path
    else
      render :edit
    end
  end

  def search
    @patients = Patient.search(params[:keyword])
  end

  def destroy
    @patient = Patient.find(params[:id])
    if @patient.destroy
      redirect_to root_path
    else
      render :show
    end
  end


  private

  def patient_params
    params.require(:patient).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :birth_date_id, :phone_number)
  end

  def if_not_admin
    redirect_to root_path unless current_user && current_user.admin?
  end

end

