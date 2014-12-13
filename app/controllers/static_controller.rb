class StaticController < ActionController::Base
	layout "application"

	# before_filter for the user_menu to authorize

	def home
	end	

	def user_menu
	end

end