class Booking < ApplicationRecord
  belongs_to :performer
  belongs_to :user
  has_many :reviews
end
