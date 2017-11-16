module Logs
  class Engine < ::Rails::Engine
    require 'haml-rails'

    isolate_namespace Logs

    config.generators do |g|
      g.test_framework :rspec
      g.stylesheets false
      g.javascripts false
      g.template_engine :haml
    end
  end
end
