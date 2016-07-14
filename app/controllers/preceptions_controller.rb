class PreceptionsController < ApplicationController

	def create 
		@application = Application.find(params[:application_id])
		@preception = @application.preceptions.build(preception_params)
		@preception.doctor_name = current_user.name
		if @preception.save 
			redirect_to @application, notice: "Preception created."
		else
			redirect_to @application, alert: "Preception not created."
		end
	end

	private

	def preception_params
      params.require(:preception).permit(:problem, :medicine)
    end

end