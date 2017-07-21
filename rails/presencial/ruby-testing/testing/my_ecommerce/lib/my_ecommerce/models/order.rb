module MyEcommerce
  module Models
    class Order

      attr_accessor :products, :shipping

      def initialize
        @products = []
        @shipping = []
      end

      def total coupon = nil, shipping = nil

        if coupon
          raise InvalidCouponError unless coupon[:code].start_with? 'C'
          raise InvalidCouponError if coupon[:discount].negative?
        end

        discount = coupon ? coupon[:discount] : 0
        shipp = shipping ? shipping[:country] : 0

        order_total = @products.reduce 0 do |sum, product|
          sum += (product[:precio] * product[:cantidad])
        end

        order_total -= (order_total * (discount/100.0))

        @shipping.each do |s|
          if s[:shipping] == shipp
            shippingCO = s[:precio]
          end
        end

        order_total += shippingCO

      end
    end
  end
end