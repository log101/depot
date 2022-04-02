class AddPriceToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :price, :integer
  end
end
