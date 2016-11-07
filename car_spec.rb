require("minitest/autorun")
require("minitest/rg")
require_relative("car")
require_relative("person")

class TestCar < MiniTest::Test

    def setup
        @driver = Person.new('Chris', 30)
        @car = Car.new('Red', 'Fiesta', @driver)
    end

    def test_car_has_colour
        assert_equal('Red', @car.colour)
    end

    def test_car_has_model
        assert_equal('Fiesta', @car.model)
    end

    def test_car_starts_with_full_tank
        assert_equal(100, @car.fuel)
    end

    def test_car_starts_with_no_speed
        assert_equal(0, @car.speed)
    end

    def test_car_accelerates
        @car.accelerates()
        assert_equal(10, @car.speed)
        assert_equal(95, @car.fuel)
    end

    def test_car_brakes__speed_not_zero
        @car.accelerates()
        @car.brakes()
        assert_equal(0, @car.speed)
        assert_equal(95, @car.fuel)
    end

    def test_car_brakes__speed_already_at_zero
        @car.brakes()
        assert_equal(0, @car.speed)
    end

    def test_car_has_driver
        assert_equal(@driver, @car.driver)
    end

    def test_number_of_passengers
        assert_equal(0, @car.number_of_passengers)
    end

    def test_pick_up_passenger
        anna = Person.new('Anna', 28)
        tony = Person.new('Tony', 59)

        @car.pick_up_passenger(anna)
        @car.pick_up_passenger(tony)

        assert_equal(2, @car.number_of_passengers)
    end
end