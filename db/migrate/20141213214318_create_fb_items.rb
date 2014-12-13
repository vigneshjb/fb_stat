class CreateFbItems < ActiveRecord::Migration
  def change
    create_table :fb_items do |t|
      t.string :fb_id
      t.integer :likes_count
      t.integer :comments_count
      t.string :content
      t.datetime :fb_time
      t.integer :user_id

      t.timestamps
    end
  end
end
