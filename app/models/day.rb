class Day < ApplicationRecord
  has_many :orders
  # has_many :users, through: :orders
  # has_many :muffin_types, through: :orders

end
