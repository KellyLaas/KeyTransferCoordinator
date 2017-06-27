class Trip < ApplicationRecord
  has_and_belongs_to_many :legs
  has_and_belongs_to_many :users
  validates :origin, :destination, :triptitle, presence: true
end
