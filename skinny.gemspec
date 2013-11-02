# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skinny/version'

Gem::Specification.new do |spec|
  spec.name = "tuttinator-skinny"
  spec.version = Skinny::VERSION
  spec.summary = "Thin WebSockets"
  spec.description = "Simple, upgradable WebSockets for Thin."
  spec.summary = spec.description
  spec.author = ["Caleb Tutty", "Samuel Cochran"]
  spec.email = ["caleb@prettymint.co.nz", "sj26@sj26.com"]
  spec.homepage = "http://github.com/sj26/skinny"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.extra_rdoc_files = ["README.md", "LICENSE"]

  spec.add_dependency "eventmachine", "~> 1.0.0"
  spec.add_dependency "thin", "> 1.5.0", "< 1.7.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rdoc"
  spec.add_development_dependency 'rspec'
end

