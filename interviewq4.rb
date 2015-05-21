class MathStuff
  def self.do_math(x,y)
    add(x,y)
    sub(x,y)
    divide(x,y)
    multiply(x,y)
  end

  def self.add(x,y)
    puts "Addition: #{x + y}"
  end

  def self.sub(x,y)
    puts "Subtraction: #{x - y}"
  end

  def self.divide(x,y)
    puts "Division: #{x/y}"
  end

  def self.multiply(x,y)
    puts "Multiplication: #{x*y}"
  end
end

MathStuff.do_math(2,2)

