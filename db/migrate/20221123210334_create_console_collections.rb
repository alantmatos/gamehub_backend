class CreateConsoleCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :console_collections do |t|
      t.integer :user_id
      t.integer :console_id

      t.timestamps
    end
  end
end
