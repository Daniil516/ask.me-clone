class User < ApplicationRecord
  has_secure_password
  before_validation :downcase_nickname

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
  validates :nickname, uniqueness: true, length: { maximum: 40 }, format: {with: /[a-zA-Z0-9_]/}

  def downcase_nickname
    nickname.downcase!
  end
end
