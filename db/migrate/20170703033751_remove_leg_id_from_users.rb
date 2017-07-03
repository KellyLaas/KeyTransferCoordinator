class RemoveLegIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :leg_id
  end
end
