require 'spec_helper'

describe Diablo3Api::Client do

  before do
    @keys = Diablo3Api::Configuration::VALID_CONFIG_KEYS
  end

  describe 'with module configuration' do
    before do
      Diablo3Api.configure do |config|
        @keys.each do |key|
          config.send("#{key}=", key)
        end
      end
    end

    after do
      Diablo3Api.reset
    end

    it "should inherit module configuration" do
      api = Diablo3Api::Client.new
      @keys.each do |key|
        api.send(key).should eql key
      end
    end

    describe 'with class configuration' do
      before do
        @config = {
          :format     => 'of',
          :endpoint   => 'ep',
          :user_agent => 'ua',
          :method     => 'hm',
        }
      end

      it 'should override module configuration' do
        api = Diablo3Api::Client.new(@config)
        @keys.each do |key|
          api.send(key).should eql @config[key]
        end
      end

      it 'should override module configuration after' do
        api = Diablo3Api::Client.new

        @config.each do |key, value|
          api.send("#{key}=", value)
        end

        @keys.each do |key|
          api.send("#{key}").should eql @config[key]
        end
      end

    end

  end

end