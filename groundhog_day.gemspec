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

  spec.files         = ["README.md", "LICENSE.txt", "Rakefile"]
  spec.files        += ['lib/groundhog_day.rb', 'lib/groundhog_day/date_extensions.rb', 'lib/groundhog_day/datetime_extensions.rb', 'lib/groundhog_day/time_extensions.rb','lib/groundhog_day/version.rb']

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
