class PatientsController < ApplicationController

	def index
		@patients = Token.where(:doctor => current_user.name).page(params[:page]).per(10)
	end

end