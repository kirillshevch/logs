$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'logs/version'

Gem::Specification.new do |s|
  s.name        = 'logs'
  s.version     = Logs::VERSION
  s.authors     = ['Kirill Shevchenko']
  s.email       = ['hello@kirillshevch.com']
  s.homepage    = 'https://github.com/kirillshevch/logs'
  s.summary     = 'Mountable Rails Engine to see paginated logs from browser'
  s.description = s.summary
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/`/*']

  s.add_dependency 'rails', '~> 5'
  s.add_dependency 'haml-rails', '~> 1.0'

  s.add_development_dependency 'sqlite3', '~> 1.3.13'
  s.add_development_dependency 'rubocop', '~> 0.51'
  s.add_development_dependency 'pry-byebug', '~> 3.5'
  s.add_development_dependency 'rspec-rails', '~> 3.7.1'
  s.add_development_dependency 'capybara', '~> 2.16'
  s.add_development_dependency 'rake', '~> 12.3'
end
