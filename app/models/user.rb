# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string
#  username        :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    require "securerandom"

    has_secure_password

    validates :email, presence: true
    validates :password, presence: true
    validates :username, presence: true, uniqueness: true

    has_many :clients
    has_many :items
end
