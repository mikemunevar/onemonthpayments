#pages_controller.rb #MDM

class PagesController < ApplicationController
   def home
       @product = Product.find_by_sku("GROHACK1")
   end
   
end

