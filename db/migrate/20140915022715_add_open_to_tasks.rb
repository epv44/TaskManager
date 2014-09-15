class AddOpenToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :open, :integer, default: 0
  end
end
