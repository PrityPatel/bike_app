class User < ActiveRecord::Base
  has_many :bicycles
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
