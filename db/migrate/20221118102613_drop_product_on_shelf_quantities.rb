class DropProductOnShelfQuantities < ActiveRecord::Migration[6.0]
  def change
    drop_view :product_on_shelf_quantities
  end
end
