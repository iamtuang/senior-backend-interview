desc 'Fix products.on_shelf counter cache'

task fix_product_on_shelf_counter: :environment do
  Inventory.counter_culture_fix_counts column_name: :on_shelf
end
