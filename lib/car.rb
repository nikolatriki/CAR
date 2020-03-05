require 'car/version'

module Car
  class MyCar
    SPEED_OFFSET = 10

    attr_accessor :color, :car_speed
    attr_reader :year

    def initialize(year, model, color)
      @year = year
      @model = model
      @color = color
      @car_speed = 0
    end

    def speed_up(increase = SPEED_OFFSET)
      @car_speed += increase
    end

    def slow_down(decrease = SPEED_OFFSET)
      @car_speed -= decrease
    end
  end
end
