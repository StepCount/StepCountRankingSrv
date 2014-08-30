class CreateStepCounts < ActiveRecord::Migration
  def change
    create_table :step_counts do |t|
      t.string :device_id
      t.string :name
      t.integer :count
      t.timestamps
    end
  end
end
