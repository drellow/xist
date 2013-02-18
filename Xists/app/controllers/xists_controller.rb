class XistsController < ApplicationController

  def index
    if @current_user.nil?
      redirect_to login_path
    else
      @xists = @current_user.xists
    end
  end
end
