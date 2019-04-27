class CreateRobots < ActiveRecord::Migration[5.2]
  def change
    create_table :robots do |t|
      t.string :name
      t.boolean :hear
      t.boolean :see
      t.boolean :arms
      t.boolean :speed
      t.boolean :wheels
      t.boolean :jump
      t.boolean :doors
      t.boolean :stairs
      t.boolean :talk
      t.boolean :laser
      t.boolean :heat
      t.boolean :gas
      t.string :robothead



      t.timestamps
    end
  end
end
