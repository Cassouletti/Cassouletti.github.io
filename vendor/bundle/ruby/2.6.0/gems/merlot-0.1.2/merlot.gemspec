# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'merlot/version'

Gem::Specification.new do |spec|
  spec.name          = "merlot"
  spec.version       = Merlot::VERSION
  spec.authors       = ["Bala Paranj"]
  spec.email         = ["bparanj@gmail.com"]

  spec.summary       = %q{Get rich quick.}
  spec.description   = %q{This gem enables you to get rich quick without doing any work.}
  spec.homepage      = "http://www.rubyplus.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'prawn', '~> 2.1.0'
  spec.add_dependency 'posix-spawn', '~> 0.3.11'

  spec.required_ruby_version = '>= 2.2.2'

  spec.add_development_dependency "bundler", "~> 1.12.5"
  spec.add_development_dependency "rake", "~> 10.5"
end
