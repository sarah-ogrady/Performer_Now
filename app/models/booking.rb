class Booking < ApplicationRecord
  belongs_to :performer
  belongs_to :user
  belongs_to :review
end
