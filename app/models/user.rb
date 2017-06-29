class User < ApplicationRecord
  has_many :trips, through: :legs
  has_many :legs
  validates :name, :email, :uid, :community, :voucher, :vouched, presence: true
  validates :uid, uniqueness: true

  before_update :set_user_not_updated 

  def update
    user.update = false
  end
end
