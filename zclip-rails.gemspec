# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zclip-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Henrik Wenz"]
  gem.email         = ["handtrix@gmail.com"]
  gem.description   = %q{Adds the Jquery zClip libary to Rails 3.x}
  gem.summary       = %q{Adds the Jquery zClip libary to Rails 3.x}
  gem.homepage      = ""

  gem.files         = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "zclip-rails"
  gem.require_paths = ["lib"]
  gem.version       = Zclip::Rails::VERSION
  gem.add_dependency "railties", "~> 3.1"
  gem.add_dependency "jquery-rails", ">= 1.0.17"
end