class RemoveOpen < ActiveRecord::Migration
  def change
  	remove_column :tasks, :open
  end
end
