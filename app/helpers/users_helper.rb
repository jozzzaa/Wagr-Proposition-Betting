module UsersHelper

  def logged_in?
    if User.find_by(id: session[:user_id])
      return true
    else
      return false
    end
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end
