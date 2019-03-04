class OrderDay < ApplicationRecord

  belongs_to :day
  belongs_to :order

end
