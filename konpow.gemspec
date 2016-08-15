# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'konpow/version'

Gem::Specification.new do |spec|
  spec.name          = 'konpow'
  spec.version       = Konpow::VERSION
  spec.authors       = ['ru_shalm']
  spec.email         = ['ru_shalm@hazimu.com']

  spec.summary       = 'Konpow is a gem that provides helpers for external asset builders (ex. webpack)'
  spec.homepage      = 'https://github.com/rutan/konpow'
  spec.licenses      = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 4.0.0'
  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '0.42.0'
end
