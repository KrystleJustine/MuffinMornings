class User < ApplicationRecord
  has_many :orders
  has_many :muffin_types, through: :orders
  has_many :days, through: :orders

  validates :username, {presence: true, uniqueness: true}

  has_secure_password

  def name
    "#{first_name} #{last_name}"
  end
end
