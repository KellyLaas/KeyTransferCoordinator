class User < ApplicationRecord
  has_and_belongs_to_many :legs
  has_and_belongs_to_many :users
  validates :community, :email, :username, :voucher, :vouched presence: true
  validates :uid, uniqueness: true
end
