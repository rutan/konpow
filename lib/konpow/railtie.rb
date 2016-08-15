module Konpow
  class Railtie < Rails::Railtie
    initializer :konpow do
      ::Konpow::Hooks.init
    end
  end
end
