require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

nike = Shoe.new("Nike")
adidas = Shoe.new("Adidas")
lotte = Shoe.new("Lotte")
lotte2 = Shoe.new("Lotte")
  binding.pry

end