
class Triangle
  attr_accessor :side1, :side2, :side3
 
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def validate_triangle 
    
     
    
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
