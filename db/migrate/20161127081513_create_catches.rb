class CreateCatches < ActiveRecord::Migration[5.0]
  def change
    create_table :catches do |t|
      t.string :angler_name, null: false
      t.string :species
      t.integer :weight
      t.integer :length
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      t.timestamps
    end
  end
end
