class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout :choose_layout
  protect_from_forgery with: :exception
  
  def choose_layout
    ['admin', 'products'].include?(params[:controller]) ? 'administrative' : 'application'
  end
end
