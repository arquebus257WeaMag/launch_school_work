class Car
  attr_accessor :year, :color, :model, :speed

  def initialize(year, color, model)
    @speed = 0
    @year = year
    @color = color
    @model = model
  end

  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 2
  end
  def show
    "This car is a #{self.color} #{self.year} #{self.model} that is moving at #{self.speed} mph"
  end
end

c1 = Car.new(2009, 'green', 'BMW')
c1.accelerate
p c1.show
c1.brake
p c1.show