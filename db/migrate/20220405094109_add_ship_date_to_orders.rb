class AddShipDateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :ship_date, :string
  end
end
