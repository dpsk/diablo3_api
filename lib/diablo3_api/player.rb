require 'httparty'

module Diablo3Api

  class Player

    attr_accessor :username

    include HTTParty
    base_uri Diablo3Api::Configuration::DEFAULT_ENDPOINT

    def initialize(username)
      self.username = username
    end

    def profile
      self.class.get "/profile/#{self.username}/"
    end

  end

end