# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zclip-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Henrik Wenz", "Joseph Huckaby", "SteamDev"]
  gem.email         = ["handtrix@gmail.com"]
  gem.description   = %q{Wrapper for jQuery - zClip (zeroclipboard). Adds easy copy to clipboard functionality to your Rails 3.x app}
  gem.summary       = %q{Adds easy copy to clipboard functionality to your Rails 3.x app}
  gem.homepage      = "https://github.com/HaNdTriX/zclip-rails"
  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "zclip-rails"
  gem.require_paths = ["lib"]
  gem.version       = Zclip::Rails::VERSION
  gem.add_dependency "railties", "~> 3.1"
  gem.add_dependency "jquery-rails", ">= 1.0.17"
end