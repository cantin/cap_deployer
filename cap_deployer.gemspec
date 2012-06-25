# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cap_deployer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["cantin"]
  gem.email         = ["cantin2010@gmail.com"]
  gem.description   = %q{Generate basic deploy}
  gem.summary       = %q{deploy helper}
  gem.homepage      = "github.com/cantin"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "cap_deployer"
  gem.require_paths = ["lib"]
  gem.version       = CapDeployer::VERSION
end
