class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :dollar_amount

      t.timestamps
    end
  end
end
