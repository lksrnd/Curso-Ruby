class ApplicationController < ActionController::Base
  layout :layout_by_resource

  private

  def layout_by_resource
    (devise_controller? && resource_class) ? "admin_devise" : "application"
  end
end
