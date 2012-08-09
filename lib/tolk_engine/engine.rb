module TolkEngine
  class Engine < ::Rails::Engine
    isolate_namespace TolkEngine
    config.to_prepare do
      ApplicationController.helper(TolkEngineHelper)
    end
  end
end
