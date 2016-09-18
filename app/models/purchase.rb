#purchase.rb #MDM
class Purchase < ActiveRecord::Base
    # rather than responding with the new incremental purchase order number let's make each new one an obscure UUID#MDM
    def to_param
        uuid
    end
end
