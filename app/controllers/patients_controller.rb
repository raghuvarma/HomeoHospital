class PatientsController < ApplicationController

	def index
		#.where("doctor = ? AND status = ?", current_user.name, "Waited for checkup")
		#.where(:doctor => current_user.name)
		@patients = Token.where("doctor = ? AND status = ? AND is_active = ?", current_user.name, "Waited for Checkup", true).page(params[:page]).per(10)
	end

end