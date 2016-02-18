# Be sure to restart your server when you modify this file.

if Rails.env.production?
  Rails.application.config.session_store :redis_store, servers: {
    host: ENV["REDIS_PORT_6379_TCP_ADDR"],
    port: ENV["REDIS_PORT_6379_TCP_PORT"],
    db: ENV["REDIS_DB"] || 0,
    namespace: ENV["REDIS_NAMESPACE"] || "session",
    password: ENV["REDIS_PASSWORD"]
  }
else
  Rails.application.config.session_store :redis_store, servers:"redis://localhost:6379/0/session", key: '_app_session'
end
