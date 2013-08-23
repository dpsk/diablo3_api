module Diablo3Api
  class Client
    attr_accessor(*Configuration::VALID_CONFIG_KEYS)

    def initialize(options={})
      # Merge the config values from the module
      # and those passed to the client.
      merged_options = Diablo3Api.options.merge(options)

      # Copy the merged values to this client and ignore
      # those not part of our configuration.
      Configuration::VALID_CONFIG_KEYS.each do |key|
        send("#{key}=", merged_options[key])
      end
    end
  end
end
