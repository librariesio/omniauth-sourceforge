# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-sourceforge/version'

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-sourceforge'
  gem.version       = Omniauth::Sourceforge::VERSION
  gem.authors       = ['Andrew Nesbitt']
  gem.email         = ['andrew@libraries.io']
  gem.description   = %q{Omniauth strategy for authenticating to Sourceforge.net}
  gem.summary       = %q{Omniauth strategy for authenticating to Sourceforge.net}
  gem.homepage      = 'https://github.com/librariesio/omniauth-sourceforge'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth', '~> 1.0'

  gem.add_development_dependency 'rspec', '~> 3.1'
  gem.add_development_dependency 'rspec-its', '~> 1.0'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rake'
end
