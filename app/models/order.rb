class Order < ApplicationRecord
  belongs_to :user
  belongs_to :muffin_type
  belongs_to :day
end
