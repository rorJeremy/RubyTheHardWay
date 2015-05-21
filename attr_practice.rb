class Pract
  attr_accessor :name
  # def name=(value) #this is the writer
  #   @name = value
  # end

  # def name #this is the reader
  #   @name
  # end
end

guy = Pract.new

# "respond_to?" is for detecting if a class has a particular method in it."
if guy.respond_to?("name=")
  guy.name = "Jeremy"
  puts guy.name
else
  puts "no wayyyy"
end
