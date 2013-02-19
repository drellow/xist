class XistsController < ApplicationController

  def index
    if @current_user.nil?
      redirect_to login_path
    else
      @xists = @current_user.xists
    end
  end

  def new
    @xist = Xist.new
    @xist.xist_files.build
  end

  def create
    @xist = Xist.new(params[:xist])
    if @xist.save!
      redirect_to xists_url
    else
      render 'new'
    end
  end
end


