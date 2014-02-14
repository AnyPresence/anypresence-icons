# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'anypresence/icons/version'

Gem::Specification.new do |spec|
  spec.name          = "anypresence-icons"
  spec.version       = AnyPresence::Icons::VERSION
  spec.authors       = ["Randall Morey"]
  spec.email         = ["rmorey@anypresence.com"]
  spec.summary       = %q{Icons for AnyPresence products.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.2"
  
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sass-rails", ">= 4.0.1"
  spec.add_development_dependency "compass-rails", ">= 1.1.3"
  spec.add_development_dependency "compass-recipes", ">= 0.3.0"
end
