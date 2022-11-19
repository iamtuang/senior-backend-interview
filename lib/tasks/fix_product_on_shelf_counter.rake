desc 'Fix products.on_shelf counter cache'

# It is recommended to run this task regularly to fix any incorrect values
# https://github.com/magnusvk/counter_culture#manually-populating-counter-cache-values
task fix_product_on_shelf_counter: :environment do
  Inventory.counter_culture_fix_counts column_name: :on_shelf
end
