OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Constants::FACEBOOK_APP_ID, Constants::FACEBOOK_SECRET,
    :scope => 'email,read_stream,user_photos,user_status',
    :client_options => {
      :site => 'https://graph.facebook.com/v2.0/',
      :authorize_url => "https://www.facebook.com/v2.0/dialog/oauth"
    }
end