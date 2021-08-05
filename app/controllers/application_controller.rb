class ApplicationController < ActionController::Base
  layout "application"

  def show
    render template: 'providers/show'
  end
end
