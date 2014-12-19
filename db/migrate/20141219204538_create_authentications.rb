class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :provider
      t.string :uid
      t.string :fbid
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.references :user, index: true

      t.timestamps
    end
  end
end
