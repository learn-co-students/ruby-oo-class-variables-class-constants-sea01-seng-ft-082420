require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  @@iin = false

  def initialize(brand)
    @brand = brand
    BRANDS.each do |key|
      if brand == key
        @@iin = true
      end
    end
    if @@iin == false
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end

# Shoe
#   BRANDS
#     keeps track of all brands (FAILED - 1)
#     only keeps track of unique brands (FAILED - 2)