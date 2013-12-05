def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket."
  puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def coffee_and_cream(coffee_type, cream_type)
  puts "You're about to drink #{coffee_type} coffee!"
  puts "And we're adding #{cream_type} as cream!"
  puts
end

blonde = "Veranda"
basic = "2%"

coffee_and_cream("Colombian", "Soy Milk")
coffee_and_cream("Verona", "Breve")
coffee_and_cream("Yukon", "Whole" + " Milk")
coffee_and_cream(blonde, basic)


