module Logs
  class Engine < ::Rails::Engine
    %w[haml-rails rake].each { |f| require f }

    isolate_namespace Logs

    config.to_prepare do
      folders = ['app/services/logs/*', 'app/*/logs/concerns/*']
      folders.each do |folder|
        Dir.glob(Engine.root + folder).each do |c|
          require_dependency(c)
        end
      end
    end

    config.generators do |g|
      g.test_framework :rspec
      g.stylesheets false
      g.javascripts false
      g.template_engine :haml
    end
  end
end
