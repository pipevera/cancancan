class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :filter_admin!

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_path, alert: exception.message
  end
end
