class UpdateContentLength < ActiveRecord::Migration
  def change
  	change_column :fb_items, :content, :longtext
  end
end
