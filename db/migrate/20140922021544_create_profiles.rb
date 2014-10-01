class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :description
      t.boolean :hourly

      t.timestamps
    end
  end
end
