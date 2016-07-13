class ProblemsController < ApplicationController

	def create 
		@application = Application.find(params[:application_id])
		@problem = @application.problems.build(problem_params)

		if @problem.save 
			redirect_to @application, notice: "Problem created."
		else
			redirect_to @application, alert: "Problem not created."
		end
	end

	private
	def problem_params
      params.require(:problem).permit(:problem_type, :description)
    end

end