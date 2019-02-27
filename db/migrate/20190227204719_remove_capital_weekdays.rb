class RemoveCapitalWeekdays < ActiveRecord::Migration[5.2]
  def change
    remove_column :temptations, :Sunday, :boolean
    remove_column :temptations, :Monday, :boolean
    remove_column :temptations, :Tuesday, :boolean
    remove_column :temptations, :Wednesday, :boolean
    remove_column :temptations, :Thursday, :boolean
    remove_column :temptations, :Friday, :boolean
    remove_column :temptations, :Saturday, :boolean
  end
end
