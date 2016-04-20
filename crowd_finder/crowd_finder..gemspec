# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "crowd_finder"
  spec.version       = "0.0.1"
  spec.authors       = ["Daniel Ziv"]
  spec.email         = ["Daniel@shake.cards"]
  spec.description   = %q{Get all the data you need from crowdfunding campaigns}
  spec.summary       = %q{Crowd funding sites scraper}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'json'
  spec.add_dependency 'time'
  spec.add_dependency 'open-uri'
  spec.add_dependency 'open_uri_redirections'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'uri'

end