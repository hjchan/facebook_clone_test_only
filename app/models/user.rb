class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true,
    format: {with: /@\w{2,}\./, message: "wrong format"}
  validates :password, presence: true,
    length: {within: 6..20}
  validates :password_confirmation, presence: true

  has_many :statuses, dependent: :destroy
  has_many :likes, dependent: :destroy

end
