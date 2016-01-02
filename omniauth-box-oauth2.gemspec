# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/box_oauth2/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-box-oauth2"
  spec.version       = OmniAuth::BoxOauth2::VERSION
  spec.authors       = ["Pramod Shinde"]
  spec.email         = ["pramodshinde7@gmail.com"]

  spec.summary       = %q{A Box OAuth2 strategy for OmniAuth 1.x}
  spec.description   = %q{A Box OAuth2 strategy for OmniAuth 1.x}
  spec.homepage      = "https://github.com/pramodshinde/omniauth-box-oauth2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
