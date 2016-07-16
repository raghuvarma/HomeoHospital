class MedicinesController < ApplicationController

	def index
		#Client.where("orders_count = ? AND locked = ?", params[:orders], false)
		@medicines = Token.where("staff1 = ? AND status = ? AND is_active = ?", current_user.name, "Waited for Medicine", true).page(params[:page]).per(10)
	end

end