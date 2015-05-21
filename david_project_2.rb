# [33, 567, 24, 90, 87]

def maximum_num(arrayy)
  max = arrayy.first
  arrayy.each do |num|
    if (max < num)
      max = num
    end
  end
  return max
end

def minimum_num(arrayy)
  min = arrayy.first
  arrayy.each do |num|
    if (min > num)
      min = num
    end
  end
  return min
end

def average(arrayy)
  sum = 0
  arrayy.each do |num|
    sum += num
  end
  avg = sum / arrayy.length
  return avg
end

def median(arrayy)
  sorted_array = arrayy.sort
  puts "This is the array sorted: #{sorted_array}"
  if sorted_array.length % 2 != 0
    puts "This was easy, because it was an odd number."
    median_spot = (sorted_array.length + 1) / 2
    median_spot = median_spot - 1
    return sorted_array[median_spot]
  else
    # If there is an even number of observations, then there is no single middle value;
    # the median is then defined to be the mean of the two middle values
    puts "Not so simple. This was an even number."
    median_spot1 = (sorted_array.length + 1) / 2
    median_spot2 = median_spot1 - 1
    median = (sorted_array[median_spot1] + sorted_array[median_spot2]) / 2
    return median
  end
end

def mode(arrayy)
  # If the values in a given set all occur the same number of times, the data set
  # has no mode because no number is any more common than any other.

end

print "Give me a list of numbers, separated by commas, then press enter: "
list = STDIN.gets.chomp()
arrayy = list.split(",").map { |s| s.to_i }
# puts "So you're list is: #{list}"
puts "The max value is: #{maximum_num(arrayy)}"
puts "The min value is: #{minimum_num(arrayy)}"
puts "The average is: #{average(arrayy)}"
puts "The median is: #{median(arrayy)}"
# maximum_num(arrayy)
