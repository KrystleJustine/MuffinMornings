class Order < ApplicationRecord
  belongs_to :user
  belongs_to :muffin_type
  has_many :days, through: :order_days

end