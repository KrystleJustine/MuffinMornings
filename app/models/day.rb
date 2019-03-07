class Day < ApplicationRecord
  has_many :order_days
  has_many :orders, through: :order_days
  has_many :users, through: :orders
  has_many :muffin_types, through: :orders

end
