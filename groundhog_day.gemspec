# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'groundhog_day/version'

Gem::Specification.new do |spec|
  spec.name          = "groundhog_day"
  spec.version       = GroundhogDay::VERSION
  spec.authors       = ["Zach Taylor"]
  spec.email         = ["taylorzr@gmail.com"]

  spec.summary       = %q{Monkey patch Date & Time to replay the same day over, and over, and over...}
  spec.homepage      = "https://github.com/taylorzr/groundhog_day"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
