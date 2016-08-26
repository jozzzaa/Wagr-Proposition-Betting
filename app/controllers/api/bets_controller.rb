module Api
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

      user = User.find(session[:user_id])
      user.account_balance -=10
      user.save

      @bet.save

      user_name = @bet.user.user_name
      bet_side = @bet.bet_side
      bet_id = @bet.id

      render json: { user_name: user_name, bet_side: bet_side, bet_id: bet_id }
    end

    def destroy
      @bet = Bet.find(params[:bet_id])
      @bet.destroy

      user = User.find(session[:user_id])
      user.account_balance +=10
      user.save

      bet_id = @bet.id
      render json: { bet_id: bet_id }
    end

  end
end
