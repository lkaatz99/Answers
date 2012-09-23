class Question4
  attr_accessor :primeIndex
  
  # Create object
  def initialize(index = 0)
    @primeIndex = index
  end
  
  # Get prime number for given index
  def GetPrimeNumber
    @num = 0
    @index = 1
    
    #puts "index #{@primeIndex}"
    
    while @index <= @primeIndex do
      @num += 1
      if IsPrime(@num)
        @index += 1
      end
    end
    
    puts "The #{@primeIndex}st prime number is #{@num}"
  end
  
  # is num a prime number
  def IsPrime(number)
    if number & 1 == 0
      return number == 2
    end
    
    limit = Math.sqrt(number)
    
    i = 3
    while i <= limit
      if number % i == 0
        return false
      end
      i += 2
    end
    
    return true
  end
end

if __FILE__ == $0
  q = Question4.new(10001)
  q.GetPrimeNumber
end