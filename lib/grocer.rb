require "pry"

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length do 
    req_hash = collection[counter]
    if name == req_hash[:item]
      return req_hash
    end 
    counter +=1 
  end 
  #binding.pry
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |food_hash|
    food_hash.each do |key, value|
      if food_hash[:item] == find_item_by_name_in_collection(item, cart)
        consolidated_cart << food_hash
      end 
    end 
  end 
end 


  