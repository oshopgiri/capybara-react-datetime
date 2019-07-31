# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara-react-datetime/version'

Gem::Specification.new do |gem|
  gem.name          = 'capybara-react-datetime'
  gem.version       = Capybara::ReactDatetime::VERSION
  gem.authors       = ['Osho Giri']
  gem.email         = ['oshopgiri@hotmail.com']
  gem.summary       = %q{react-datetime helper for Capybara}
  gem.description   = %q{Helper for changing date input of react-datetime library}
  gem.homepage      = 'https://github.com/oshopgiri/capybara-react-datetime'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.3.8'

  gem.add_development_dependency 'capybara', '~> 3.11', '>= 3.11.1'
  gem.add_development_dependency 'rspec', '~> 3.8', '>= 3.8.0'
  gem.add_development_dependency 'capybara-screenshot', '~> 1.0', '>= 1.0.22'
  gem.add_development_dependency 'phantomjs', '~> 2.1', '>= 2.1.1.0'
  gem.add_development_dependency 'poltergeist', '~> 1.18', '>= 1.18.1'
end
