module TolkEngine
  class Engine < ::Rails::Engine
    isolate_namespace TolkEngine

    initializer 'tolk_engine.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper TolkEngine::FlashHelper
      end
    end

  end
end
