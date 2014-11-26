# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'examen/version'

Gem::Specification.new do |spec|
  spec.name          = "examen"
  spec.version       = Examen::VERSION
  spec.authors       = ["alu0100837094"]
  spec.email         = ["alu0100837094@ull.edu.es"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_development_dependency 'rspec', '~>2.11'
  
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
  # rest-client has an unbounded dependency on mime-types.
+ # mime-types 2.0 removes support for ruby 1.8.7 (gemspec requires ruby
+ # 1.9.2+), so we have to add an additional pin. 1.16 is chosen just becuase
+ # it's the version I had when I tested.
+ spec.add_development_dependency "mime-types", "~> 1.16"
end
