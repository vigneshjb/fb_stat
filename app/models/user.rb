class User < ActiveRecord::Base
  has_many :fb_items , :dependent => :destroy
  has_many :items, dependent: :destroy
  has_many :authentications, dependent: :destroy

  def self.find_for_oauth(auth)
    registered_user = User.where(:email => auth.info.email).first
    if registered_user
      return registered_user
    else
      user = User.create(name:auth.extra.raw_info.name, email: auth.info.email,
                sex: auth.extra.raw_info.gender)
    end
  end

end
