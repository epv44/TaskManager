class ChangeLogHoursToInt < ActiveRecord::Migration
  def change
  	remove_column :log_hours, :hours
  	add_column :log_hours, :hours, :integer
  end
end
