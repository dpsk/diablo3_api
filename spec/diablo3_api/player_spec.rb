require 'spec_helper'

describe Diablo3Api::Player do
  describe "default instance attributes" do

    let(:player) { Diablo3Api::Player.new("Dpsk-2824") }

    it "must have an id attribute" do
      player.should respond_to :username
    end

    it "must have the right id" do
      player.username.should eql 'Dpsk-2824'
    end

  end

  describe "GET profile" do

    let(:player) { Diablo3Api::Player.new("Dpsk-2824") }

    before do
      VCR.insert_cassette 'base', :record => :new_episodes
    end

    after do
      VCR.eject_cassette
    end

    it "must have a profile method" do
      player.should respond_to :profile
    end

    it "must parse the api response from JSON to Hash" do
      player.profile.should be_instance_of Hash
    end
  end
end