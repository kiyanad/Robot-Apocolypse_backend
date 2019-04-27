class AddRouteToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :route, :string
  end
end
