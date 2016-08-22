module UsersHelper

# enable :sessions # do I need this and where do I put it?!!!

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
