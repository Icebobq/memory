class User < ApplicationRecord
  enum sex: { male: 0, female: 1 }

  has_many :diaries, dependent: :destroy
  has_one :partner

  validates :sex, presence: true
  validates :birthday, presence: true

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: { with: /\A(\w+\-.)+@[a-z\d\-.]+\.[a-z]+\z/ }

  validates :nickname, presence: true
  validates :nickname, uniqueness: { case_sensitive: false }
  validates :nickname, format: { with: /\A[A-Za-z][A-Za-z0-9_\-.]{2,19}\z/ }

  validates :password, presence: true, confirmation: true, length: { in: 8..20 }
  validates :password_confirmation, presence: true
  has_secure_password(options = { validations: false })
end
