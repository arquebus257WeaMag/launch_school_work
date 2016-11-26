module Cargo
  attr_accessor :tonnage
end

class Vehicle
  @@total_vehicles = 0
  attr_accessor :speed
  attr_reader :year, :model

  def initialize(year, model)
    @year = year
    @model = model
    @@total_vehicles += 1
    @speed = 0
  end

  def Vehicle.gas_mileage miles
    "#{miles} per gallon"
  end

  def self.existing_vehicles
    "there exists " + @@total_vehicles.to_s + " vehicles"
  end

  def age
    "your vehicle is #{calc_age} years old"
  end

  private

  def calc_age
    Time.now.year - self.year
  end

end

class Truck < Vehicle
  include Cargo
  TYPE = :truck

  def initialize(year, model)
    super(year, model)
  end
  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 2
  end

  def load a
    @tonnage = a
  end

  def to_s
    "This is a #{self.tonnage} ton #{self.year}  #{self.model} #{TYPE} that is moving at #{self.speed} mph"
  end
end

class Car < Vehicle
  attr_accessor :color
  TYPE = :car

  def initialize(color, year, model)
    @color = color
    super(year, model)
  end
  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 2
  end

  def to_s
    "This is a #{self.color} #{self.year} #{self.model} #{TYPE} that is moving at #{self.speed} mph"
  end
  def spray_paint new_color
    self.color = new_color
  end

end

c1 = Car.new(2009, 'green', :BMW)
c1.accelerate
p c1.to_s
c1.brake
c1.spray_paint 'yellow'
p c1.to_s
t1 = Truck.new(2003, :Volvo)
t1.load 50
p t1.to_s
p t1.age
p Vehicle.existing_vehicles
p Car.ancestors
p
p Truck.ancestors