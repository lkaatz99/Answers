class Question3
  attr_accessor :size;
  
  # Create object
  def initialize(size = 0)
    @size = size
  end
  
  # Determine if number is a Palindromic
  def IsPalindromic(value)
    @value = value
    @n = @value
    @rev = 0
    
    while @value > 0
      @digit = @value % 10
      
      @rev = @rev * 10 + @digit
      @value = @value / 10
    end
    
    return (@n == @rev)
  end
  
  # Get largest Palindromic based on number of digits 
  def GetLargestPalindromic
    @product = 0
    
    @size.downto(1) { |i|
      @size.downto(1) { |j|
        @product = i * j
        
        if IsPalindromic(@product)
          puts "Largest Palindromic = #{@product}"
          return
        end
      }
    }

    puts "Largest Palindromicaa = #{@product}"
  end
end

if __FILE__ == $0
  q = Question3.new(999)
  q.GetLargestPalindromic
end
  