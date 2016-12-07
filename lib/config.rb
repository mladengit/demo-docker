module DemoDocker
  class Config
    PREFIX = 'DOCKER_DEMO'.freeze

    attr_accessor :cache

    def initialize
      @cache = {}
    end

    def get(config, key)
      load(config, key) unless cached?(config, key)
      @cache[config][key]
    end

    private

    def load(config, key)
      env_key = "#{PREFIX}_#{config.to_s.upcase}_#{key.to_s.upcase}"
      value = ENV[env_key] ||
              Rails.application.config_for(config).with_indifferent_access[key]
      set(config, key, value)
    end

    def cached?(config, key)
      @cache.key?(config) && @cache[config].key?(key)
    end

    def set(config, key, value)
      @cache.fetch(config) { |_| @cache[config] = {} }[key] = value
    end
  end

  CONFIG = Config.new
end
