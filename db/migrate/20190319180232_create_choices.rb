class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :prompt
      t.string :choiceA
      t.string :choiceB
      t.integer :turn
      t.string :path

      t.timestamps
    end
  end
end
