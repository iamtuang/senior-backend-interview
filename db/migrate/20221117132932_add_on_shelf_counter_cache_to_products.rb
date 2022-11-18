class AddOnShelfCounterCacheToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :on_shelf, :integer, default: 0, null: false
  end
end
