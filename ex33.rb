# i = 0

# numbers = []

# def while_loop(x,y,z)
#   t = 6
#   while x < t
#     puts "At the top x is #{x}"
#     y.push(x)

#     x = x + z
#     puts "Numbers now: #{y}"
#     puts "At the bottom x is #{x}"
#   end
# end



# while_loop(i, numbers, increment = 1)
i = (0..5)
numbers = []
i.each do |x|
  puts "At the top x is #{x}"
  numbers.push(x)
  puts "Numbers now: #{numbers}"
  puts "At the bottom x is #{x}"
end

puts "The numbers: "

for num in numbers
  puts num
end