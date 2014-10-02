module StaticPagesHelper
	#check if user is admin, 1 corresponds to admin
	def admin
		if current_user.admin == 1
			true
		else
			false
		end
	end

	#list number of tasks the employee has completed in the past two week cycle
	def tasks_completed(user)
		time_range = set_time
		user.tasks.where(complete: true, updated_at: time_range).count
	end

	#Show the hours taken to complete the tasks for past two week cycle
	def hours_from_tasks(user)
		time_range = set_time
		total_hours=0
		user.tasks.where(complete: true, updated_at: time_range).each do |t|
			total_hours += t.hours_to_complete
		end

		return total_hours
	end
	
	#Show the number of hours employee logged as working hours
	def hours_logged(user)
		time_range = set_time
		total_hours = 0
		user.log_hours.where(updated_at: time_range).each do |t|
			total_hours = total_hours + t.hours
		end

		return total_hours
	end
	
	#calculate percent difference in, mult by 100 for percent
	def percent_difference(user)
		((hours_from_tasks(user)* 1.0) / hours_logged(user))*100
	end

	private
	def set_time
		2.weeks.ago...Time.now
	end
end