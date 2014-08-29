require File.expand_path('../boot', __FILE__)

require 'rails/all'
<<<<<<< HEAD
<<<<<<< HEAD
require 'dotenv' ; Dotenv.load ".env.local", ".env.#{Rails.env}"
=======
require 'dotenv-rails' ; Dotenv.load ".env.local", ".env.#{Rails.env}"
require 'twilio-ruby'
>>>>>>> dumb commit
=======
require 'dotenv-rails' ; Dotenv.load ".env.local", ".env.#{Rails.env}"
>>>>>>> 2780376b220abd3a876574f564178f62878b02ef
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mrelief
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
  end
end
