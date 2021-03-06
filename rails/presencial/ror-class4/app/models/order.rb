class Order < ApplicationRecord
  # belongs_to :product
  # belongs_to :user

  has_many :orders_products
  has_many :products, through: :orders_products
  belongs_to :user
  has_one :invoice

  scope :with_products, -> () {
    includes(:products)
  }


  # scope :with_products, -> (id) {
  #   find(id).includes(:product).find(id)
  # }


  scope :with_products_n_1, -> () {
    all.each do |order|
      order.products.each do |p|
        puts "PRODUCT = #{p.sku}"
      end
    end
  }

  scope :with_products_n_1, -> () {
    all.each do |order|
      order.products.each do |p|
        puts "PRODUCT = #{p.sku}"
      end
    end
  }

end
