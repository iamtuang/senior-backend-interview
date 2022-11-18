class Inventory < ApplicationRecord
  enum status: InventoryStatusChange::STATUSES
  belongs_to :product
  counter_culture :product,
                  column_name: 'on_shelf',
                  column_names: {
                    ['inventories.status = ?', 'on_shelf'] => 'on_shelf'
                  }
  belongs_to :order, required: false

  validates :product, presence: true
end
