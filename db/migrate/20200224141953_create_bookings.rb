class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :total_hours
      t.integer :total_price
      t.datetime :date
      t.references :performer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
