# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "statico/version"

Gem::Specification.new do |s|
  s.name        = "statico"
  s.version     = Statico::VERSION
  s.authors     = ["Filip Tepper"]
  s.email       = ["filip@tepper.pl"]
  s.homepage    = "https://github.com/filiptepper/statico"
  s.summary     = %q{Ad-hoc HTTP Server}
  s.description = %q{Ad-hoc HTTP Server for static files}

  s.rubyforge_project = "statico"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "goliath"
end