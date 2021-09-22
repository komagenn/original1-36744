class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.integer :work_id, null: false
      t.integer :hour_id, null: false
      t.integer :sum, null: false
      t.text :holiday, null: false
      t.timestamps
    end
  end
end
