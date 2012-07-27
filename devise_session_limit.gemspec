# -*- encoding: utf-8 -*-
require File.expand_path('../lib/devise_session_limit/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adrien Jarthon"]
  gem.email         = ["adrien.jarthon@dimelo.com"]
  gem.description   = %q{Devise plugin preventing a user from having multiple open sessions}
  gem.summary       = %q{Devise plugin preventing a user from having multiple open sessions}
  gem.homepage      = "https://github.com/dimelo/devise_session_limit"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "devise_session_limit"
  gem.require_paths = ["lib"]
  gem.version       = DeviseSessionLimit::VERSION
end
