class Car
    
    attr_reader :colour, :model, :fuel, :speed

    def initialize(colour, model)
        @colour = colour
        @model = model
        @fuel = 100
        @speed = 0
    end
    
    def accelerates()
        return "not enough fuel!" if @fuel <= 5
        @fuel -= 5 
        @speed += 10
    end

    def brakes()
        @speed < 10 ? @speed = 0 : @speed -= 10
    end    
end