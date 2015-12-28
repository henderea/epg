# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'epg/version'

Gem::Specification.new do |spec|
  spec.name          = 'epg'
  spec.version       = Epg::VERSION
  spec.authors       = ['Eric Henderson']
  spec.email         = ['henderea@gmail.com']
  spec.summary       = %q{General executable container for my gems to plug into}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10', '>= 1.10.4'
  spec.add_development_dependency 'rake', '~> 10.4'

  spec.add_dependency 'everyday-cli-utils', '~> 1.8', '>= 1.8.6'
  spec.add_dependency 'everyday-plugins', '~> 1.2'
  spec.add_dependency 'everyday_thor_util', '~> 2.0', '>= 2.0.5'
  spec.add_dependency 'thor', '~> 0.19'
end
