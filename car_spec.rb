require("minitest/autorun")
require("minitest/rg")
require_relative("car")

class TestCar < MiniTest::Test

    def setup
        @car = Car.new('Red', 'Fiesta')
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

end