OmniAuth.config.logger = Rails.logger

#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, '', '052ac8832ceab1bfdc527cc13af560c4' , {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
#end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret']
end
