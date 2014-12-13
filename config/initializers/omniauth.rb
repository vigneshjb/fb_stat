OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Constants::FACEBOOK_APP_ID, Constants::FACEBOOK_SECRET
end