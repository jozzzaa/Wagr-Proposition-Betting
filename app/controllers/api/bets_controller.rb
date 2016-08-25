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

    def destroy
      @bet = Bet.find(params[:id])
      @prop = Proposition.find(params[:proposition_id])
      if @prop.deadline >= Time.now
        @bet.destroy
        bet_id = @bet.id
        prop_id = @prop.id
        render json: { bet_id: bet_id, prop_id: prop_id }
      else
        flash[:title]='Error!'
        flash[:notice]='You can no longer delete your bet as the deadline has passed.'
        redirect_to "/propositions/#{@prop.id}"
      end
    end

  end
end
