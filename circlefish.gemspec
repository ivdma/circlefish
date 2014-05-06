# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'circlefish/version'

Gem::Specification.new do |spec|
  spec.name          = 'circlefish'
  spec.version       = Circlefish::VERSION
  spec.authors       = ['Ivan Malykh']
  spec.email         = ['ivan@roqua.nl']
  spec.summary       = %q{Webhook parser from Circle CI}
  spec.description   = %q{Parses JSON POST webhooks coming from Circle CI}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus', '~> 1.0.2'

  spec.add_development_dependency 'bundler',       '~> 1.6'
  spec.add_development_dependency 'coveralls',     '~> 0.7.0'
  spec.add_development_dependency 'rake',          '~> 10.3.1'
  spec.add_development_dependency 'rspec',         '~> 2.14.1'
  spec.add_development_dependency 'guard',         '~> 2.6.0'
  spec.add_development_dependency 'guard-rspec',   '~> 4.2.8'
  spec.add_development_dependency 'guard-bundler', '~> 2.0.0'
end
