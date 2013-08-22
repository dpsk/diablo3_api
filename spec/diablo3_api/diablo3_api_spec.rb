require 'spec_helper'

describe Diablo3Api do
  it 'should have a version' do
    Diablo3Api::VERSION.should_not be_nil
  end
end