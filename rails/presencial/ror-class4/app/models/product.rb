class Product < ApplicationRecord


  has_many :orders_products
  has_many :orders, through: :orders_products

  scope :in_inventory, -> { where('quantity > :qty', qty: 0) }

  default_scope :in_inventory, -> { where('quantity > :qty', qty: 0) }

  scope :not_expired, -> { where expired:false }

  scope :ordersa, -> { order('sku asc') }

  scope :pricea, -> { order('price asc') }


end
