class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_action :authenticate_user!

	rescue_from CanCan::AccessDenied do |exception|
		flash[:error] = "Access denied!. You Don't have access to do this action."
		redirect_to root_url
	end

end
