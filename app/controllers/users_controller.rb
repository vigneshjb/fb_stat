class UsersController < ApplicationController

	def refresh_data
    	# peform action here
    	p "Vignesh Loves here \n\n\n\n\n\n\n\n\n\n"
    	redirect_to :controller=> 'fb_items', :action => 'index', :items=>"posts"
	 end

end