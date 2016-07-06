require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    config.time_zone = 'Beijing'
    config.active_job.queue_adapter = :sidekiq
  end
end

ActiveSupport.halt_callback_chains_on_return_false = false
