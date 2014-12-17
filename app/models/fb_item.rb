class FbItem < ActiveRecord::Base
	belongs_to :user

	scope :photos, lambda{
		where(' item_type Like ?', "photo")
	}

	scope :posts, lambda{
		where('item_type like ?', "post")
	}
end
