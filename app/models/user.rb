class User < ApplicationRecord
  has_many :orders
  has_many :muffin_types, through: :orders
  has_many :days, through: :orders

  validates :username, {presence: true, uniqueness: true}

  has_secure_password

  # def password=(plaintext_password)
  #   self.password_digest = BCrypt::Password.create(plaintext_password)
  # end
  #
  # def authenticate(plaintext)
  #   byebug
  #   BCrypt::Password.new(self.password_digest) == plaintext
  # end

  def name
    "#{first_name} #{last_name}"
  end
end
