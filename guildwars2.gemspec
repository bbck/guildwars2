# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guildwars2/version'

Gem::Specification.new do |gem|
  gem.name          = "guildwars2"
  gem.version       = Guildwars2::VERSION
  gem.authors       = ["Chris Boyle"]
  gem.email         = ["chris@bbck.net"]
  gem.description   = %q{Access the Guild Wars 2 API.}
  gem.summary       = %q{Access the Guild Wars 2 API.}
  gem.homepage      = "https://github.com/bbck/guildwars2"
  gem.licenses      = ["MIT"]

  gem.add_development_dependency "rspec", "~>2.13.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
