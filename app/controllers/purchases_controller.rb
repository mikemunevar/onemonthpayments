#purchases_controller.rb #MDM

class PurchasesController < ApplicationController
   def show
       # @purchase = Purchase.find(params[:id])
       # the purchases controller now needs to find by uuid #MDM 
       @purchase = Purchase.find_by_uuid(params[:id])
       
   end
   
end
