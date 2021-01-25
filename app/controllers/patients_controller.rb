class PatientsController < ApplicationController
   before_action :if_not_admin

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    # unless @patient.valid?
    #   render :new and return
    # end
    # session["patient_data"] = {patient: @patient.attributes}
    # @patient_address = @patient.build_patient_address
    # render :new_patient_address
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

  private

  def patient_params
    params.require(:patient).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :birth_date_id, :phone_number)
  end

  def if_not_admin
    redirect_to root_path unless current_user && current_user.admin?
  end

end

# <% if current_user && current_user.admin? %>
