class FbItem < ActiveRecord::Base
  has_one :item, as: :itemizable, dependent: :destroy
	belongs_to :user

	scope :photos, lambda{
		where(' item_type Like ?', "photo")
	}

	scope :posts, lambda{
		where('item_type like ?', "post")
	}
end
