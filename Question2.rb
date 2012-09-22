class Question2
  attr_accessor :natural
  attr_accessor :diff
  
  # Create the object
  def initialize(nat = 0)
    @natural = nat
  end

  # Calculate difference between Square of Sum and Sum of Squares
  def difference
    @diff = 0

    @diff = SquareOfSums() - SumOfSquares()
    
    puts "Diff =  #{@diff}!"
  end

  # Sum of Squares
  def SumOfSquares()
    @val = 0
    
    for i in 1..@natural
      @val += i * i
    end
    
    return @val
  end
  
  # Square of Sums
  def SquareOfSums()
    @val = 0
    
    for i in 1..@natural
      @val += i
    end
    
    return @val * @val
  end
end

if __FILE__ == $0
  q = Question2.new(100)
  q.difference
end