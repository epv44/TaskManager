class StaticPagesController < ApplicationController

	def home
		@users = User.all
		@tasks = current_user.tasks
		@open_tasks = current_user.tasks.where(open: 1)
	end

end