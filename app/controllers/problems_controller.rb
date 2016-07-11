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

	# def update

	# 	respond_to do |format|
	#       if @problem.update(application_params)
	#         # format.html { redirect_to @application, notice: 'Application was successfully updated.' }
	#         # format.json { render :show, status: :ok, location: @application }
	#         redirect_to @application, notice: "Problem created."
	#       else
	#         # format.html { render :edit }
	#         # format.json { render json: @application.errors, status: :unprocessable_entity }
	#         redirect_to @application, alert: "Problem not created."
	#       end
	#     end
	# end

	private
	def problem_params
      params.require(:problem).permit(:problem_type, :description)
    end

end