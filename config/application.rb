require File.expand_path("../boot", __FILE__)

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "dotenv"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
Dotenv.load ".env.local", ".env.#{Rails.env}"

module BlogAndRelax
  class Application < Rails::Application
    # Settings in config/environments/*
    # take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_controller.include_all_helpers = true
    config.active_record.raise_in_transactional_callbacks = true
    config.i18n.default_locale = :en
  end
end
