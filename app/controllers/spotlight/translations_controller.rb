module Spotlight
  ##
  # Base CRUD controller for translations
  class TranslationsController < Spotlight::ApplicationController
    before_action :authenticate_user!, :set_language
    load_and_authorize_resource :exhibit, class: Spotlight::Exhibit

    def index; end

    private

    def set_language
      @language = params[:language] || current_exhibit.available_locales.first
    end
  end
end
