module TolkEngine
  class CustomDevise::RegistrationsController < Devise::RegistrationsController
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