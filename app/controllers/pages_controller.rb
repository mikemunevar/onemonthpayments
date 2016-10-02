#pages_controller.rb #MDM

class PagesController < ApplicationController
   def home
       @product = Product.find_by_sku("GROHACK2")
   end
   
end

