class AddModelToConsole < ActiveRecord::Migration[7.0]
  def change
    add_column :consoles, :model, :string
  end
end
