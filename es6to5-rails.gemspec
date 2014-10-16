# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'es6to5-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'es6to5-rails'
  spec.version       = Es6to5::VERSION
  spec.authors       = ['Anatoly Lapshin']
  spec.email         = ['holywarez@gmail.com']
  spec.summary       = %q{Simple gem to translate ECMAScript 6 scripts to ES5 ones using 6to5}
  spec.description   = %q{Simple gem to translate ECMAScript 6 scripts to ES5 ones using 6to5}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_runtime_dependency 'tilt'
  spec.add_runtime_dependency 'sprockets'
end
