class ChangePriceToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :createproducts, :price, :decimal, precision: 5, scale: 2
  end
end
