class AddUserIdToShifts < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :users_id, :integer
  end
end
