class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :admin, :integer, default: 0
    add_index :users, :username, unique: true
  end
end
