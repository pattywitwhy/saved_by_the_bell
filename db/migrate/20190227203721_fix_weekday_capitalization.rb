class FixWeekdayCapitalization < ActiveRecord::Migration[5.2]
  def change
    add_column :temptations, :sunday, :boolean
    add_column :temptations, :monday, :boolean
    add_column :temptations, :tuesday, :boolean
    add_column :temptations, :wednesday, :boolean
    add_column :temptations, :thursday, :boolean
    add_column :temptations, :friday, :boolean
    add_column :temptations, :saturday, :boolean
  end
end
