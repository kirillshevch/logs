$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'logs/version'

Gem::Specification.new do |s|
  s.name        = 'logs'
  s.version     = Logs::VERSION
  s.authors     = ['Kirill Shevchenko']
  s.email       = ['hello@kirillshevch.com']
  s.homepage    = 'https://github.com/kirillshevch/logs'
  s.summary     = 'Mountable Rails Engine for viewing paginated logs from a browser'
  s.description = s.summary
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib,vendor}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/`/*']

  s.add_dependency 'rails', '> 5'
  s.add_dependency 'haml-rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rake'
end
