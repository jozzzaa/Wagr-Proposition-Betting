class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = params[:custom_amount]

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Wagr Stripe customer',
      :currency    => 'aud'
    )

    u = User.find_by(id: session[:user_id])
    u.account_balance += @amount.to_i
    u.save

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
