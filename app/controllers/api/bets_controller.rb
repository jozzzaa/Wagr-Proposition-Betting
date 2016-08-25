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
      @bet.save

      user_name = @bet.user.user_name
      bet_side = @bet.bet_side
      render json: { user_name: user_name, bet_side: bet_side }
    end

  end
end
