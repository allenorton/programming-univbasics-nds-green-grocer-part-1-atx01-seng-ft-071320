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
  counter = 0 
  while counter < cart.size do
    food_hash = cart[counter]
    food = food_hash[:item]
    if find_item_by_name_in_collection(food, nu_cart) == nil 
      food_hash[:count] = 1   
      nu_cart.push(food_hash)
    end
    if find_item_by_name_in_collection(food_hash[:item], nu_cart) == nu_cart
      food_hash[:count] += 1 
    end 
    counter +=1 
  end 
  nu_cart
end 
    #nu_cart.each do |element|
     # if element.has_key?(food)
      #  food_hash[:count] += 1 
      #end 
    #end 
  #  counter +=1 
  #end
  #binding.pry 
  #nu_cart
#binding.pry 
#end


  