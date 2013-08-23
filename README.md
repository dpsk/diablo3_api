[![Build Status](https://travis-ci.org/dpsk/diablo3_api.png?branch=master)](https://travis-ci.org/dpsk/diablo3_api)

# Diablo3Api

Ruby Wrapper for Diablo 3 API that let you fetch your d3 profile

## Installation

Install gem:

    $ gem install diablo3_api

## Usage

```ruby
  require 'diablo3_api'
  player = Diablo3Api::Player.new("Dpsk-2824")
  puts player.profile.inspect
```
``player.profile`` now contains information about requested profile.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
