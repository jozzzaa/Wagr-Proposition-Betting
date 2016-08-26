class BetsController < ApplicationController

  def create
    @prop = Proposition.find(params[:proposition_id])
    @bet = Bet.new
    # assuming don't need to put user_id or proposition_id in here?
    @bet.proposition_id = params[:proposition_id]
    @bet.user_id = session[:user_id]
    if params[:bet_side] == "yes"
      @bet.bet_side = true
    elsif params[:bet_side] == "no"
      @bet.bet_side = false
    end
    @bet.amount = 10
    @bet.save

    user = User.find(session[:user_id])
    user.account_balance -=10
    user.save

    redirect_to "/propositions/#{@prop.id}"
    # make sure display the error message (@bet.errors) on the proposition page if it doesn't save.
  end

  def destroy
    @bet = Bet.find(params[:id])
    @prop = Proposition.find(params[:proposition_id])
    if @prop.deadline >= Time.now

      user = User.find(session[:user_id])
      user.account_balance +=10
      user.save

      @bet.destroy
      redirect_to "/propositions/#{@prop.id}"
    else
      flash[:title]='Error!'
      flash[:notice]='You can no longer delete your bet as the deadline has passed.'
      redirect_to "/propositions/#{@prop.id}"
    end
  end
end
