# User generated charge_controller.rb #MDM
# Add in the code from the Stripe Rails tutorial #MDM


class ChargesController < ApplicationController
    def create
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        # :amount      => @amount,
        :amount      => params[:amount],
        :description => 'Growth Hacking Crash Course',
        :currency    => 'usd'
      )
    
    # Create a new purchase #MDM
    purchase = Purchase.create(
      email: params[:stripeEmail], 
      card: params[:stripeToken], 
      amount: params[:amount],
      description: charge.description,
      currency: charge.currency,
      customer_id: customer.id,
      product_id: 1
      )
      
    redirect_to purchase
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
end
