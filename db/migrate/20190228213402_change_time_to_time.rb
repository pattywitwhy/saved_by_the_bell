class ChangeTimeToTime < ActiveRecord::Migration[5.2]
  def change
    change_column :temptations, :time, :time
  end
end
