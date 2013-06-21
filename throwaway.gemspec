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
  
  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]
end
