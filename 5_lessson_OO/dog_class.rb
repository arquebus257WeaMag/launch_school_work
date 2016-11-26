class GoodDog
  D = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    D=3
    self.age  = a * D
  end
end

sparky = GoodDog.new("Sparky", 13)
puts sparky.age 
