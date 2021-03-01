class RegistrationsController < ApplicationController
  before_action :require_user

  def create
    Registration.create!(course_id: registration_params[:course_id], user_id: current_user.id)
    flash[:notice] = "You are now registered."
    redirect_to '/dashboard'
  end

  private

  def registration_params
    params.permit(:course_id)
  end
end
