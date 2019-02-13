class ChargesController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    puts "*"*50
    puts "je suis dans new"
    puts "*"*50
    puts params
    puts "*"*5
    puts @amount
    puts "*"*50
  end

  def create
    @event = Event.find(params[:event_id])
    @amount = @event.price
    puts "*"*50
    puts "je suis dans create"
    puts "*"*50
    puts params
    puts "*"*5
    puts @event
    puts "*"*50

   customer = Stripe::Customer.create(
     :email => params[:stripeEmail],
     :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    
    puts "*"*50
    puts charge[:customer]
    puts "*"*50

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  
end
