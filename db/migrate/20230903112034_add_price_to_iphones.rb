class AddPriceToIphones < ActiveRecord::Migration[7.0]
  def change
    add_column :iphones, :price, :string
  end
end
