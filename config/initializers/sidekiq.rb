require "#{Rails.root}/lib/config"

Sidekiq.configure_server do |config|
  config.redis = { url: DemoDocker::CONFIG.get(:redis, :url) }
end

Sidekiq.configure_client do |config|
  config.redis = { url: DemoDocker::CONFIG.get(:redis, :url) }
end
