# == Schema Information
#
# Table name: comments
#
#  id           :bigint           not null, primary key
#  comment_body :string
#  user_id      :integer
#  show_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :show
end
