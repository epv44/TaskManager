class AddAssignedByToTask < ActiveRecord::Migration
  def change
  	add_column :tasks, :assigned_by, :string
  end
end
