class CreateConsoles < ActiveRecord::Migration[7.0]
  def change
    create_table :consoles do |t|
      t.string :name
      t.string :brand
      t.string :upc
      t.string :condition
      t.string :product_family
      t.integer :release_year
      t.boolean :trade
      t.integer :rating
      t.string :value
      t.string :storage

      t.timestamps
    end
  end
end
