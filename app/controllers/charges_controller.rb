# User generated charges_controller.rb #MDM
# Add in the code from the Stripe Rails tutorial #MDM


class ChargesController < ApplicationController
    def create
      product = Product.find_by_sku("GROHACK2")
      customer = Stripe::Customer.create(
        :email   => params[:stripeEmail],
        :source  => params[:stripeToken],
        :plan    => "GROHACK2"
      )
    
#      charge = Stripe::Charge.create(
#        :customer    => customer.id,
        
        # Make sure that you use the amount from the database, better to prevent hacking of price. #MDM
        # :amount      => @amount,
        # :amount      => params[:amount],
#        :amount      => product.price_in_cents,
        
        # Adjust the description to use the composed(concatenated) description #MDM
        # :description => 'Growth Hacking Crash Course',
#        :description => product.full_description,
#        :currency    => 'usd'
#      )

    # Create a new purchase #MDM
    purchase = Purchase.create(
      email:        params[:stripeEmail], 
      card:         params[:stripeToken], 
      
      # Use the following variation to make sure that a customer does not hack the amount #MDM
      #amount:       params[:amount],
      amount:       product.price_in_cents,
      description:  product.full_description,
      currency:     'usd',
      
      # Make sure that each purchase ID gets a random hex
      customer_id:  customer.id, 
      product_id:   product.id, 
      uuid:         SecureRandom.uuid
      )

    redirect_to purchase
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
end
