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
    include Rails.application.routes.url_helpers
    has_secure_password
    has_one_attached :avatar
    has_many :shows
    has_many :comments
    validates :username, presence: true, uniqueness: true
    validates :password,
            length: { minimum: 3 },
            if: -> { new_record? || !password.nil? }

    def avatar_url
        rails_blob_path(self.avatar, disposition: "attachment", only_path: "true")
    end

    
end
