class StaticController < ActionController::Base
	layout "application"

	def home
		render :home
	end	

end