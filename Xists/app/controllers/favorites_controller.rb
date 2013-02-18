class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new
    @favorite.update_attributes(
      :user_id => params[:user_id],
      :xist_id => params[:xist_id])
    redirect_to xists_path
  end

  def destroy
    @favorite = Favorite.where(:user_id => params[:user_id],
                               :xist_id => params[:xist_id]).first
    @favorite.destroy

    redirect_to xists_path
  end


end
