class Car
    
    attr_reader :colour, :model, :fuel, :speed, :driver

    def initialize(colour, model, driver)
        @colour = colour
        @model = model
        @driver = driver
        @fuel = 100
        @speed = 0
        @passengers = []
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