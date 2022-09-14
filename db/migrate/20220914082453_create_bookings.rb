class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :flat, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
