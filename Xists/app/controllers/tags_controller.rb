class TagsController < ApplicationController
  def index
    respond_to do |format|
      format.json { render :json => Tag.all }
    end
  end
end
