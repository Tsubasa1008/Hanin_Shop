require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HaninShop
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.action_mailer.smtp_settings = {
      address:              "smtp.mailgun.org",
      port:                 587,
      domain:               "sandboxbdd0cb62fae342c2999296d47753552f.mailgun.org",
      authentication:       "plain",
      user_name:            "postmaster@sandboxbdd0cb62fae342c2999296d47753552f.mailgun.org",
      password:             "1e4a9ff8947c73c15c82032502817f6f",
      enable_starttls_auto: true
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
