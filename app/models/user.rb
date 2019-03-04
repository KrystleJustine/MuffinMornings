class User < ApplicationRecord
  has_many :orders
  has_many :muffin_types, through: :orders
  has_many :days, through: :orders
end
