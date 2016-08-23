class PropositionsController < ApplicationController

  def index
    # if user.admin?
    @user = session[:user_id] # this is for listing the user's stats on the right.
    @props = Proposition.last(12)
    # @prop_popular = # need to go into bets and count proposition_id and sort by that - this site tells exactly how to do it (I didn't have time to figure this out) - http://stackoverflow.com/questions/8696005/rails-3-activerecord-order-by-count-on-association
    render :index
  end

  def new
    # to access the error messages if it doesn't save from create and renders this page again, use @prop.errors
    render :new
  end

  def create
    @prop = Proposition.new
    @prop.title = params[:title]
    @prop.description = params[:description]
    @prop.image = params[:image]
    @prop.deadline = params[:deadline]
    @prop.user_id = params[:user_id]
    # I'm presuming we don't need to save the user_id here? Does it automatically do it for us?
    if @prop.save
      redirect_to "/propositions/#{@prop.id}"
    else
      render :new
    end
  end

  def show
    # you want to show error messages flash[:title] and flash[:notice] if they exist (see edit and destroy methods below)
    @prop = Proposition.find(params[:id])
    render :show
    # to show the proposition's bets under the proposition, do a loop with @prop.bets
  end

  def edit
    # to access the error messages, it will be @prop.errors
    @prop = Proposition.find(params[:id])
    if @prop.bets.count < 2
      render :edit
    else
      flash[:title]='Error!'
      flash[:notice]='You can no longer edit your proposition.'
      redirect_to "/propositions/#{@prop.id}"
    end
  end

  def update
    @prop = Proposition.find(params[:id])
    @prop.title = params[:title]
    @prop.description = params[:description]
    @prop.image = params[:image]
    @prop.deadline = params[:deadline]
    if @prop.save
      redirect_to "/propositions/#{@prop.id}"
    else
      render :new
    end
  end

  def update_referee
    @prop = Proposition.find(params[:id])
    @prop.bets.each do |bet|
      bet.outcome = params[:outcome]
      bet.save
      # pay $ etc here.
    end
  end

  def destroy
    @prop = Proposition.find(params[:id])
    if @prop.bets.count < 2
      @prop.bets.destroy
      @prop.destroy
      redirect_to '/propositions'
    else
      flash[:title]='Error!'
      flash[:notice]='You can no longer delete your proposition.'
      redirect_to "/propositions/#{@prop.id}"
    end
  end

  def destroy_admin
    @prop = Proposition.find(params[:id])
    @prop.bets.destroy
    @prop.destroy
    redirect_to '/propositions'
  end

end
