class ActiveTokensController < ApplicationController

	def index
		#@activeTokens = Token.find_by_is_active(true)
		@activeTokens = Token.where(:is_active => true)
	end

end