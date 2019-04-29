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

class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :show
end
