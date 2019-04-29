class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment_body
      t.integer :user_id
      t.integer :show_id

      t.timestamps
    end
  end
end
