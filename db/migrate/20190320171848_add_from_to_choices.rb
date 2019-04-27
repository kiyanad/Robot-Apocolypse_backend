class AddFromToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :from, :string
  end
end
