# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-oyoh/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-oyoh"
  s.version     = Omniauth::Oyoh::VERSION
  s.authors     = ["Reza Jelveh"]
  s.email       = ["reza@louisiana.edu"]
  s.homepage    = "https://github.com/fishman/omniauth-oyoh"
  s.summary     = %q{Official DHH Codefest strategy for OmniAuth}
  s.description = %q{Official DHH Codefest (Own Your Own Health) strategy for OmniAuth}

  s.rubyforge_project = "omniauth-dhh"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'omniauth', '~> 1.0'
  s.add_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
