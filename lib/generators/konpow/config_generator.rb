module Konpow
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      desc 'generate config'
      def generate_config
        template 'konpow_config.rb', 'config/initializers/konpow.rb'
      end
    end
  end
end
