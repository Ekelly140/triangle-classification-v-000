
class Triangle
  attr_accessor :side1, :side2, :side3
 
  def initialize(side1,side2,side3)
    @a = side1
    @b = side2
    @c = side3
  end 
  
   def validate_triangle
    real_triangle = [(@a + @b > @c), (@a + @c > @b), (@b + @c > @a)]
    [@a, @b, @c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  
  def kind 
     
    self.validate_triangle
    
    if (@side1 == @side2 && @side1 == @side3) 
      :equilateral
    elsif (@side1 == @side2 || @side1 == @side3 || @side2 == @side3) 
      :isosceles
    elsif (@side1 != @side2 && @side1 != @side3 && @side2 != @side3) 
      :scalene
    end
     
  end 
  
  class TriangleError < StandardError 
      def message 
      "Invalid Side Length"
      end
  end 
end
