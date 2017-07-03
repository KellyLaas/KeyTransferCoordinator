class Leg < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  validates :origin, :destination, presence: true
end
