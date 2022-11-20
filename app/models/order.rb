class Order < ApplicationRecord
  belongs_to :ships_to, class_name: 'Address'
  has_many :line_items, class_name: 'OrderLineItem'
  has_many :inventories

  scope :recent, -> { order(created_at: :desc) }
  scope :fulfilled, -> { joins(:inventories).group('orders.id') }
  scope :not_fulfilled, -> { left_joins(:inventories).where(inventories: { order_id: nil }) }
  scope :fulfillable, lambda {
    not_fulfilled
      .joins(:line_items)
      .joins(<<~SQL)
        LEFT OUTER JOIN products
          ON order_line_items.product_id = products.id
          AND order_line_items.quantity <= products.on_shelf
      SQL
      .group(:id)
      .having(<<~SQL)
        COUNT(DISTINCT products.id) =
        COUNT(DISTINCT order_line_items.product_id)
      SQL
      .order(:created_at, :id)
  }

  def cost
    line_items.inject(Money.zero) do |acc, li|
      acc + li.cost
    end
  end

  def fulfilled?
    inventories.any?
  end

  # bug: order which is already been fulfilled (all of its items has been shipped) is still regonized as fulfillable.
  # can be fixed as follow:
  #   def fulfillable?
  #     !fulfilled? && line_items.all?(&:fulfillable?)
  #   end
  # we could add a column to order to check for its fulfillment status instead of querying to inventories everytime.
  def fulfillable?
    line_items.all?(&:fulfillable?)
  end
end
