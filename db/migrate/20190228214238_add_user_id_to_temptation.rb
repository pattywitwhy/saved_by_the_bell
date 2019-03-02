class AddUserIdToTemptation < ActiveRecord::Migration[5.2]
  def change
    add_column :temptations, :user_id, :integer
    add_column :goals, :user_id, :integer
  end
end
