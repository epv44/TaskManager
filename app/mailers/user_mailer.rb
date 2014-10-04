class UserMailer < ActionMailer::Base
  	default from: "admin@consultmango.com"
	
	def task_email(task)
		@task = task
		@user = User.find(task.user_id)
		@url = 'http://floating-brook-2730.herokuapp.com/'
  		mail(to: @user.email, subject: 'You have a new task!')
  	end
end
