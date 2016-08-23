class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    # to access the error messages, it will be @user.error
    @user = User.new
    render :new
  end

  def create
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.user_name = params[:user_name]
    @user.profile_image = params[:profile_image]
    @user.account_balance = 0
    @user.account_type = "standard"
    if @user.save
      redirect_to '/users'
    else
      render :new
    end
  end

  # not sure if we will have a show page for a user to see their account details - if so, keep the method below.
  def show
    @user = User.find(params[:id])
    render :show
  end

  def edit
    # to access the error messages, it will be @user.error
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    @user.email = params[:email]
    @user.password = params[:password]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.user_name = params[:user_name]
    @user.profile_image = params[:profile_image]
    if @user.save
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end

end
