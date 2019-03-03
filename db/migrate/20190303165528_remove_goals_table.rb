class RemoveGoalsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :goals
    add_column :users, :goal_title, :string
    add_column :users, :goal_start, :datetime
    add_column :users, :goal_end, :datetime
    add_column :users, :goal_amount, :integer
  end
end
