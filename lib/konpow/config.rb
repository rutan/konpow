require 'active_support/configurable'

module Konpow
  class Configuration
    include ActiveSupport::Configurable

    config_accessor :base_path
    config_accessor :manifest_path
    config_accessor :dev_host

    def manifest
      return @manifest if instance_variable_defined?(:@manifest)
      @manifest =
        (JSON.parse(File.read(manifest_path)) if manifest_path && File.exist?(manifest_path))
    end
  end

  def self.configure
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end
end
