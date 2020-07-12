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
  nu_cart = []
  cart.each do |food_hash|
    food_hash.each do |key, value|
      if food_hash[:key] == find_item_by_name_in_collection(food_hash[:key], cart)
        nu_cart << food_hash
        food_hash[:count] += 1
      end 
    end 
  end 
  binding.pry 
end 


  