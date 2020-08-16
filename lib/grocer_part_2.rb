require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  cart.each do |item|
    coupons.each do |couponItems|
      if item[:item] == couponItems[:item]
        price = couponItems[:cost] / couponItems[:num]
        number = 0
        while item[:count] >= couponItems[:num]
          item[:count] -= couponItems[:num]
          number += couponItems[:num]
        end
        cart.push({
          :item => item[:item] + " W/COUPON",
          :price => price,
          :clearance => item[:clearance],
          :count => number
        })
      end
    end
  end
end

def apply_clearance(cart)
  cart.each do |item|
    if item[:clearance]
      item[:price] = (item[:price] * 0.8).round(2)
    end
  end
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
