class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :user_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
