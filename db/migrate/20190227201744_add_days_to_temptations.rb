class AddDaysToTemptations < ActiveRecord::Migration[5.2]
  def change
    add_column :temptations, :Sunday, :boolean
    add_column :temptations, :Monday, :boolean
    add_column :temptations, :Tuesday, :boolean
    add_column :temptations, :Wednesday, :boolean
    add_column :temptations, :Thursday, :boolean
    add_column :temptations, :Friday, :boolean
    add_column :temptations, :Saturday, :boolean
  end
end
