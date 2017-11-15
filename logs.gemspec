$:.push File.expand_path("../lib", __FILE__)
require "logs/version"

Gem::Specification.new do |s|
  s.name        = "logs"
  s.version     = Logs::VERSION
  s.authors     = ["Kirill Shevchenko"]
  s.email       = ["hello@kirillshevch.com"]
  s.homepage    = "https://github.com/kirillshevch/logs"
  s.summary     = "Mountable Rails Engine to see paginated logs with search from browser"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5"

  s.add_development_dependency "sqlite3"
end
