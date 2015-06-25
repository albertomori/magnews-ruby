# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magnews/version'

Gem::Specification.new do |spec|
  spec.name          = "magnews-ruby"
  spec.version       = Magnews::VERSION
  spec.authors       = ["Fabrizio Monti"]
  spec.email         = ["fabrizio.monti@welaika.com"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "~> 1.8.0"
  spec.add_dependency "activesupport", "~> 4.2.2"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3.0"
  spec.add_development_dependency "pry-byebug", "~> 3.1.0"
  spec.add_development_dependency "webmock", "~> 1.21.0"
  spec.add_development_dependency "simplecov", "~> 0.10.0"
  spec.add_development_dependency "priscilla", "~> 1.0.3"
end
