class CreateLogHours < ActiveRecord::Migration
  def change
    create_table :log_hours do |t|
      t.string :hours
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
