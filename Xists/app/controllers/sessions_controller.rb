class SessionsController < ApplicationController
  def new
    @current_user = User.new
  end

  def create
    @current_user = User.find_by_name(params[:name])

    if @current_user
      session[:user_id] = @current_user.id
      redirect_to xists_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
