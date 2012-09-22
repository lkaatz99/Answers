class Question1
  attr_accessor :max
  attr_accessor :total
  
  # Create the object
  def initialize(max = 0)
    @max = max
  end

  # Calculate even number sum
  def calevensum
    @total = 0
    @i = 0
    
    while true
      @num = fib(@i)
      @i += 1;
      
      if @num < @max
        if @num % 2 == 0
          @total += @num
        end
      else
        break
      end
    end
    
    puts "Sum =  #{@total}!"
  end

  # fibonacci
  def fib(n)
    n < 2 ? n : fib(n-1) + fib(n-2)
  end
end

if __FILE__ == $0
  q = Question1.new(4000000)
  q.calevensum
end