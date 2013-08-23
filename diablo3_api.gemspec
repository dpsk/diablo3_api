# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'diablo3_api/version'

Gem::Specification.new do |s|
  s.name          = 'diablo3_api'
  s.version       = Diablo3Api::VERSION
  s.authors       = 'Mikhail Nikalyukin'
  s.email         = 'idups1k@gmail.com'
  s.description   = %q{Simple Ruby client for Diablo 3 API}
  s.summary       = %q{Ruby wrapper for Diablo 3 API that let you fetch your D3 profile}
  s.homepage      = 'https://github.com/dpsk/diablo3_api'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'httparty'

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.6'
  s.add_development_dependency 'webmock', '~> 1.8.0'
  s.add_development_dependency 'vcr'
end
