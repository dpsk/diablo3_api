# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diablo3_api/version'

Gem::Specification.new do |spec|
  spec.name          = "diablo3_api"
  spec.version       = Diablo3Api::VERSION
  spec.authors       = ["Mikhail Nikalyukin"]
  spec.email         = ["idups1k@gmail.com"]
  spec.description   = %q{Simple Ruby client for Diablo 3 API}
  spec.summary       = %q{Ruby Wrapper for Diablo 3 API that let you fetch your d3 profile}
  spec.homepage      = "https://github.com/dpsk/diablo3_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "httparty"
  spec.add_development_dependency "webmock", "~> 1.8.0"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "rake"
end
