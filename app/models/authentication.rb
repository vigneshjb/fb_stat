class Authentication < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(auth, user)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |authentication|
      authentication.provider = auth.provider
      authentication.uid = auth.uid
      authentication.oauth_token = auth.credentials.token
      authentication.oauth_expires_at = Time.at(auth.credentials.expires_at)
      authentication.fbid = auth.extra.raw_info.username
      authentication.user = user
    end
  end

end
