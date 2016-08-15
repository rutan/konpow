module Konpow
  module Helpers
    def asset_pack_path(path)
      host = Rails.application.config.action_controller.asset_host
      manifest = Konpow.config.manifest
      base_path = Konpow.config.base_path
      if manifest
        "#{host}/#{base_path}/#{manifest[path] || manifest["/#{path}"]}"
      else
        "#{Konpow.config.dev_host || host}/#{base_path}/#{path}"
      end
    end
  end
end
