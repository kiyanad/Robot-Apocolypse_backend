class AddRobotPathToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :robotpath, :string
  end
end
