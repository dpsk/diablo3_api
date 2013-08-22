module Diablo3Api
  module Configuration
    VALID_CONFIG_KEYS    = [:endpoint, :user_agent, :method, :format].freeze

    DEFAULT_ENDPOINT    = 'http://us.battle.net/api/d3'
    DEFAULT_METHOD      = :get
    DEFAULT_USER_AGENT  = "diablo3_api Ruby Gem #{Diablo3Api::VERSION}".freeze
    DEFAULT_FORMAT       = :json

    attr_accessor *VALID_CONFIG_KEYS

    def self.extended(base)
      base.reset
    end

    def reset
      self.endpoint   = DEFAULT_ENDPOINT
      self.method     = DEFAULT_METHOD
      self.user_agent = DEFAULT_USER_AGENT
      self.format     = DEFAULT_FORMAT
    end

    def configure
      yield self
    end

    def options
      Hash[ * VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten ]
    end
  end
end