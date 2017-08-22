class BaseCar
  attr_accessor :current_speed, :brand, :max_speed

  def initialize(args={})
    @current_speed  = (args[:current_speed] || default_current_speed).to_i
    @max_speed      = (args[:max_speed] || default_max_speed).to_i
    @brand          = args[:brand] || default_brand
  end

  def accelerate
    until @current_speed == @max_speed do
      @current_speed += 1
      sleep(0.01)                           # using sleep to see the speed increasing gradually in the o/p
      print " #{@current_speed}"
    end
    puts "\n It hit the cars max speed"
    @current_speed
  end

  def drive
    accelerate
    puts "\n The car is now stopped"
  end

  def default_brand
    'Unkown'
  end

  def default_max_speed
    0
  end

  def default_current_speed
    0
  end

end

class CamaroCar < BaseCar

  def default_brand
    'Chevy'
  end

  def default_max_speed
    200
  end

end
