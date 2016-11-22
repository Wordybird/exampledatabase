require_relative('../models/pizza')

Pizza.delete_all()

pizza1 = Pizza.new({
  "first_name" => "Val",
  "last_name" => "Dryden",
  "topping" => "Pepperoni",
  "quantity" => 1
})

pizza2 = Pizza.new({
  "first_name" => "Will",
  "last_name" => "Robertson",
  "topping" => "Italian Sausage",
  "quantity" => 12
})

pizza3 = Pizza.new({
  "first_name" => "Ben",
  "last_name" => "Faulkner",
  "topping" => "Spaces",
  "quantity" => 0
})

pizza1.save
pizza2.save
pizza3.save