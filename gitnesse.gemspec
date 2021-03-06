# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitnesse/version'

Gem::Specification.new do |gem|
  gem.name          = "gitnesse"
  gem.version       = Gitnesse::VERSION
  gem.authors       = ["www.hybridgroup.com"]
  gem.email         = ["info@hybridgroup.com"]
  gem.description   = %q{Use github wiki to store feature stories, then execute then using Cucumber}
  gem.summary       = %q{Features on git-based Wiki!}
  gem.homepage      = "https://github.com/hybridgroup/gitnesse"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency("bundler")
  gem.add_dependency("gollum","~> 2.3.12")
  gem.add_development_dependency("minitest-matchers")
  gem.add_development_dependency("mocha")
  gem.add_development_dependency("cucumber")
  gem.add_development_dependency("rake")
  gem.executables = ['gitnesse']
end
