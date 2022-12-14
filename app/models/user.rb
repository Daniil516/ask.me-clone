class User < ApplicationRecord
  has_many :questions, dependent: :delete_all

  has_secure_password
  before_validation :downcase_nickname

  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
  validates :nickname, uniqueness: true, length: {maximum: 40}, format: {with: /[a-zA-Z0-9_]/}
  validates :header_color, format: {with: /\A#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\z/}

  include Gravtastic
  gravtastic(secure: true, filetype: :png, size: 100, default: "mp")

  def to_param
    nickname
  end

  private

  def downcase_nickname
    nickname.downcase!
  end
end
