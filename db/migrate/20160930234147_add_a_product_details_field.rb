class AddAProductDetailsField < ActiveRecord::Migration
  def change
        add_column      :products, :details, :string

  end
end
