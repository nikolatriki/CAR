require "car/version"

module Car
  class MyCar
    attr_accessor :color, :car_speed
    attr_reader :year

    def initialize(year, model, color)
      @year = year
      @model = model
      @color = color
      @car_speed = 0
    end

    def speed_up(arg1)
      @car_speed += arg1
    end
  end
end
