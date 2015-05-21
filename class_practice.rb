# Make a CSV file called dummy_data.csv with the following information:

# Print each row of the file with the CSV class.
require 'csv'

# dir = "/Users/jperez/thehardway/"
# file = "dummy_data.csv"
# filename = dir + file

# CSV.foreach(filename) do |row|
#   puts row.inspect
# end

CSV.foreach('./dummy_data.csv') do |row|
  puts row.inspect
end

string = "Hello,World\nMy,Name"
puts CSV.parse(string).inspect

CSV.parse(string) do |row|
  puts row.inspect
end

puts CSV.read('dummy_data.csv').inspect

# x = CSV.read('dummy_data.csv', {:col_sep => ';'})
# puts x.inspect
# CSV.foreach('dummy_data.csv', {:col_sep => ';'}) do |row|
#   puts row.inspect
# end