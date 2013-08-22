require 'spec_helper'
describe 'configuration' do

  Diablo3Api::Configuration::VALID_CONFIG_KEYS.each do |key|
    describe ".#{key}" do
      it 'should return the default value' do
        Diablo3Api.send(key).should eql Diablo3Api::Configuration.const_get("DEFAULT_#{key.upcase}")
      end
    end
  end

  describe '.configure' do
    after { Diablo3Api.reset }
    Diablo3Api::Configuration::VALID_CONFIG_KEYS.each do |key|
      it "should set the #{key}" do
        Diablo3Api.configure do |config|
          config.send("#{key}=", key)
          Diablo3Api.send(key).should eql key
        end
      end
    end
  end 
end