class Array
  def say_hi
    lowercase("HEY!")
  end

  def lowercase(x)
    x.downcase
  end
end

puts [1, "bob"].say_hi