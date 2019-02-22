class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

    def respond_to_html_and_json(variable)
      respond_to do |format|
        format.html { render :index }
        format.json { render json: variable}
      end
    end
end
