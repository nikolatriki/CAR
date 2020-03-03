require "car/version"

module Car
    class MyCar
        attr_accessor :color, :car_speed
        attr_reader :year

        def initialize(year, color, model)
            @year = year
            @color = color
            @model = model
            @car_speed =0
        end
    end
end
