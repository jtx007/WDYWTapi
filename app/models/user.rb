# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    has_secure_password
    has_one_attached :avatar
    has_many :shows
    has_many :comments
    validates :username, presence: true, uniqueness: true
end
