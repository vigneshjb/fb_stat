json.array!(@fb_items) do |fb_item|
  json.extract! fb_item, :id, :fb_id, :likes_count, :comments_count, :content, :fb_time, :user_id
  json.url fb_item_url(fb_item, format: :json)
end
