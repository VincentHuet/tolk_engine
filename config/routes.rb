TolkEngine::Engine.routes.draw do

  get "home/index"

  devise_for :translators, :controllers => { :registrations => 'custom_devise/registrations' }, :class_name => 'TolkEngine::Translator', :module => :devise
  resources :translators
  resources :yml_sources
  resources :phrase_database_filler, :only => [:show, :index]
  resources :translations

  resources :locales do
    resources :missing_translations, :only => [:index]
    resources :translations
    resources :translators
    resources :yml_files, :only => [:index]
  end

  resources :phrases do
    resources :translations
  end

  resources :translations_in_line do
    collection do
      put :update
    end
  end

  resources :phrases
  resources :locales

  root :to => 'home#index'

end
