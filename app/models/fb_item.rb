class FbItem < ActiveRecord::Base
	belongs_to :user

	scope :photos, lambda{ |user_id|
		where('user_id = ? AND item_type = ?',
					 user_id, "photos")
	}

	scope :posts, lambda{ |user_id|
		where('user_id = ? AND item_type = ?',
					 user_id, "posts")
	}
end
