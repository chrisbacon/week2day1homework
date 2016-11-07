class Car
    attr_reader :colour, :model, :fuel, :speed
    def initialize(colour, model)
        @colour = colour
        @model = model
        @fuel = 100
        @speed = 0
    end
    
    
end