require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fyber
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # fyber config
    config.x.fyber.appid = "157"
    config.x.fyber.format = "json"
    config.x.fyber.device_id = '"2b6f0cc904d137be2e1730235f5664094b83"'
    config.x.fyber.locale = "de"
    config.x.fyber.ip = "109.235.143.113"
    config.x.fyber.offer_types = "112"
    config.x.fyber.api_key = "b07a12df7d52e6c118e5d47d3f9e60135b109a1f"
  end
end
