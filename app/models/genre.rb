# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  genre_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
    has_many :shows
    validates :genre_name, uniqueness: true
end
