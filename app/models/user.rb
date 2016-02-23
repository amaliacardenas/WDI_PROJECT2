class User < ActiveRecord::Base
 has_many :tutorials
 validates :email, presence: true, uniqueness: true
 validates :username, presence: true, uniqueness: true
 validates :password, presence: true
 has_secure_password
end