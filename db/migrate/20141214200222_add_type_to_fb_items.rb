class AddTypeToFbItems < ActiveRecord::Migration
  def up
  	add_column :fb_items, :item_type, :string
  end
end
