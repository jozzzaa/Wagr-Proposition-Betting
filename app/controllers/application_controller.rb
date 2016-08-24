class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @user = session[:user_id] # this is for listing the user's stats on the right.
    @props = Proposition.last(4)
    @prop_popular = Proposition.first(4).reverse
     render "/index.html.erb"
  end

end
