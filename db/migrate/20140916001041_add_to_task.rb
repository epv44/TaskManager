class AddToTask < ActiveRecord::Migration
  def change
  	add_column :tasks, :hours_to_complete, :integer
  end
end
