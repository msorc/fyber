FyberApiWrapper.configure do |config|
  config.format = Rails.configuration.x.fyber.format
  config.appid = Rails.configuration.x.fyber.appid
  config.device_id = Rails.configuration.x.fyber.device_id # quotes!
  config.ip = Rails.configuration.x.fyber.ip
  config.offer_types = Rails.configuration.x.fyber.offer_types
  config.api_key = Rails.configuration.x.fyber.api_key
end
