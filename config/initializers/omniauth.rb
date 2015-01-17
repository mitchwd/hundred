Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], 
  # FB Options: https://developers.facebook.com/docs/reference/dialogs/oauth
    # :scope => 'email,read_stream', 
    :client_options => {
        :site => 'https://graph.facebook.com/v2.2',
        :authorize_url => "https://www.facebook.com/v2.2/dialog/oauth"
      }
end