# == Schema Information
#
# Table name: shows
#
#  id         :bigint           not null, primary key
#  title      :string
#  user_id    :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Show < ApplicationRecord
    include Rails.application.routes.url_helpers
    belongs_to :user
    belongs_to :genre
    has_one_attached :cover
    has_many :comments

    def cover_url
        rails_blob_path(self.cover, disposition: "attachment", only_path: "true")
    end
end
