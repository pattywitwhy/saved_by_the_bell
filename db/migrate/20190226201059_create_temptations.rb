class CreateTemptations < ActiveRecord::Migration[5.2]
  def change
    create_table :temptations do |t|
      t.string :name
      t.integer :cost
      t.datetime :frequency
      t.datetime :time

      t.timestamps
    end
  end
end
