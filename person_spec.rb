require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < MiniTest::Test

    def setup
        @person = Person.new('Chris', 30)
    end

    def test_person_has_name
        assert_equal('Chris', @person.name)
    end

    def test_person_has_age
        assert_equal(30, @person.age)
    end

end
