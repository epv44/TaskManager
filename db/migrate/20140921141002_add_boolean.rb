class AddBoolean < ActiveRecord::Migration
  def change
  	add_column :tasks, :open_task, :boolean, default: false, null: false 
  end
end
