class MuffinType < ApplicationRecord
  has_many :orders
  has_many :days, through: :orders
  has_many :users, through: :orders
end
