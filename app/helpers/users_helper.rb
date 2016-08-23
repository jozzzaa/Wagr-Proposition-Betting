module UsersHelper

  def current_user
    self.find_by(id: session[:user_id])
  end

  def logged_in?
    if self.find_by(id: session[:user_id])
      return true
    else
      return false
    end
  end
  
end
