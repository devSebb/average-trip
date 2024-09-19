class CreateTransportations < ActiveRecord::Migration[7.2]
  def change
    create_table :transportations do |t|
      t.string :type
      t.references :destination, null: false, foreign_key: true
      t.decimal :cost_low, precision: 10, scale: 2
      t.decimal :cost_mid, precision: 10, scale: 2
      t.decimal :cost_high, precision: 10, scale: 2

      t.timestamps
    end
  end
end