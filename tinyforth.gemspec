# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinyforth/version'

Gem::Specification.new do |spec|
  spec.name          = "tinyforth"
  spec.version       = Tinyforth::VERSION
  spec.authors       = ["Jonathan Jackson"]
  spec.email         = ["jonathan.jackson1@me.com"]
  spec.summary       = %q{ Tiny Forth Compiler }
  spec.description   = %q{ Tiny Forth Compiler :) }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
