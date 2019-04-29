# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  genre_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GenreSerializer < ActiveModel::Serializer
  attributes :id, :genre_name, :shows
end
