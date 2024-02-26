class User < ApplicationRecord
    require "securerandom"

    has_secure_password

    validates :email, presence: true
    validates :password, presence: true
    validates :username, presence: true, uniqueness: true

    has_many :clients
end
