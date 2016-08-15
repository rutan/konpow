module Konpow
  module Hooks
    def self.init
      ActiveSupport.on_load :action_view do
        ::ActionView::Base.send :include, Konpow::Helpers
      end
    end
  end
end
