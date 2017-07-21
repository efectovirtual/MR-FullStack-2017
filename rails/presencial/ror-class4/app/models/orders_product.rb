class OrdersProduct < ApplicationRecord

  belongs_to :product
  belongs_to :order

  scope :with_multiple_p, -> (number = 1){
    select('distinct(order_id)')
      .group(:order_id, :product_id) #agrupeme esto, cuando ...
      .having('count(product_id) >= :number', number: number)
      .includes(:order) #traer todas las ordenes
  }

end