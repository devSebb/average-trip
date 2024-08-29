class CreateTrips < ActiveRecord::Migration[7.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.references :destination, null: false, foreign_key: true
      t.integer :duration
      t.decimal :total_cost, precision: 10, scale: 2

      t.timestamps
    end
  end
end
