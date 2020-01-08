def find_item_by_name_in_collection(name, collection)
  item_counter = 0
  while item_counter < collection.length do
    if name === collection[item_counter][:item]
      return collection[item_counter]
    end
    item_counter += 1
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  item_counter = 0
  while item_counter < cart.length do
    new_cart_item = find_item_by_name_in_collection(cart[item_counter][:item], new_cart)
    if new_cart_item
      new_cart_item[:count] += 1
    else
      new_cart_item = cart[item_counter]
      new_cart_item[:count] = 1
      new_cart << new_cart_item
    end
    item_counter += 1
  end
  new_cart
end

def apply_coupons(cart, coupons)
  coupon_counter = 0
  while coupon_counter < coupons.length do
    cart_checker = find_item_by_name_in_collection(coupons[coupon_counter][:item], cart)
    couponed_item_name = "#{coupons[coupon_counter][:item]} W/COUPON"
    
    coupon_counter += 1
  end
  cart
end

def apply_clearance(cart)
  counter = 0
  unique_cart = consolidate_cart(cart)
  while counter < unique_cart.length do
    if unique_cart[counter][:clearance] === true
      unique_cart[counter][:price] *= 0.8
      unique_cart[counter][:price].round(2)
    end
    counter += 1
  end
  unique_cart
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
