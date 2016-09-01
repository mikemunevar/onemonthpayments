#purchases_controller.rb #MDM

class PurchasesController < ApplicationController
   def show
       @purchase = Purchase.find(params[:id])
   end
   
end
