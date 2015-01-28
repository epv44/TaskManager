class StaticPagesController < ApplicationController
	before_action :validate_user, only: [:admin]
	def home
	
	end

	def admin
		@users = User.where(admin: 0)
	end

	def about

	end
	private
	
    def validate_user
      if current_user.admin == 1
        #valid user, display the page! 
      else
        flash[:error] = "You shall not pass"
        redirect_to(root_path)
      end
    end
end