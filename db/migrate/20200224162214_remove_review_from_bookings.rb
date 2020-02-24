class RemoveReviewFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :review, null: false, foreign_key: true
  end
end
