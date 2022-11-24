class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.string :upc
      t.string :condition
      t.string :publisher
      t.string :developer
      t.string :platform
      t.integer :release_year
      t.boolean :trade
      t.integer :rating
      t.string :value
      t.boolean :co_op

      t.timestamps
    end
  end
end
