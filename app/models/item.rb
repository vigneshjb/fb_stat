class Item < ActiveRecord::Base
  belongs_to :itemizable, polymorphic: true
  belongs_to :user
end
