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

class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :genre, :comments, :cover_url
end
