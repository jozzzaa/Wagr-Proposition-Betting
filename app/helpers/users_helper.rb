module UsersHelper

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    if User.find_by(id: session[:user_id])
      return true
    else
      return false
    end
  end

  def deadline_passed?
    if @prop.deadline > Time.now
      return true
    else
      return false
    end
  end

  def admin?
    if current_user.account_type == "admin"
      return true
    else
      return false
    end
  end

  def referee?
    if current_user.account_type == "ref"
      return true
    else
      return false
    end
  end

  def standard?
    if current_user.account_type == "standard"
      return true
    else
      return false
    end
  end

  def user_voted?
    if @prop.bets.where(user_id: session[:user_id]).count >= 1
      return true
    else
      return false
    end
  end

end
