if Rails.env.production?
  RedisClassy.redis = Redis.new(
    host: ENV["REDIS_PORT_6379_TCP_ADDR"],
    port: ENV["REDIS_PORT_6379_TCP_PORT"],
    password: ENV["REDIS_PASSWORD"]
  )
end

