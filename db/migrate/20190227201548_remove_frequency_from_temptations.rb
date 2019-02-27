class RemoveFrequencyFromTemptations < ActiveRecord::Migration[5.2]
  def change
    remove_column :temptations, :frequency, :integer
  end
end
