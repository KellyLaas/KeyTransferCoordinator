class Leg < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :trips
  validates :origin, :description, :username, presence: true
end
