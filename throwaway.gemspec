# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "throwaway/version"

Gem::Specification.new do |s|
  s.name        = "throwaway"
  s.version     = Throwaway::VERSION
  s.authors     = ["William Hamilton"]
  s.email       = ["whamilton42@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Validates email addresses are not from a throwaway account provider.}

  s.add_dependency('rspec')
  s.add_dependency('activemodel')
  s.add_dependency('mocha')
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
