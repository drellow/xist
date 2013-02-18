class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_current_user

  def set_current_user
    if session[:user_id] == nil
      @current_user = nil
    else
      @current_user = User.find(session[:user_id])
    end
  end


end
