#purchase.rb #MDM
class Purchase < ActiveRecord::Base
    after_create :email_purchaser
    
    # rather than responding with the new incremental purchase order number let's make each new one an obscure UUID#MDM
    def to_param
        uuid
    end
    
    private
    
    def email_purchaser
        PurchaseMailer.purchase_receipt(self).deliver
    end

end
