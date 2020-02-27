class Performer < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  def full_name
    "#{first_name} #{last_name}"
  end
end
