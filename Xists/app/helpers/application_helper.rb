module ApplicationHelper

  def has_favorite?(current_user, xist)
    if xist.favorites.where(:user_id => current_user.id).empty?
      return false
    else
      return true
    end
  end

end
