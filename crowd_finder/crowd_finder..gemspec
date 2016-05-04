# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "crowd_finder"
  spec.version       = "0.0.3"
  spec.authors       = ["Daniel Ziv"]
  spec.email         = ["Daniel@shake.cards"]
  spec.description   = %q{Get all the data you need from crowdfunding campaigns}
  spec.summary       = %q{Crowd funding sites scraper}
  spec.homepage      = "https://github.com/DanielRasta/crowd_finder"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'json' 
  spec.add_development_dependency 'time' 
  spec.add_development_dependency 'open-uri'
  spec.add_development_dependency 'open_uri_redirections'
  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'uri'

end