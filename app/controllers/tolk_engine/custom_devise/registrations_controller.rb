module TolkEngine
  class CustomDevise::RegistrationsController < Devise::RegistrationsController
    layout "tolk_engine/layouts/tolk_engine"

    def new
      @locales = Locale.all
      super
    end

    def create
      @locales = Locale.all
      super
    end
  end
end