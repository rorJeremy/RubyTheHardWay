first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variavle is: #{second}"
puts "Your third variable is: #{third}"
print "What is the fourth variable? "
fourth = STDIN.gets.chomp()
puts "So the fourth variavle is: #{fourth}"
