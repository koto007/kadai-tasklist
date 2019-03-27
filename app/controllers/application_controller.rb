class ApplicationController < ActionController::Base
  before_action :current_user
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private 
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
