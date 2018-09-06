require 'test/unit'
require_relative '../customer'

class CustomerTest < Test::Unit::TestCase
    def test_firts_name
        customer = Customer.new("John", "Smith")
        assert_equal(customer.first_name, "John")
    end

    def test_last_name 
        customer = Customer.new("John", "Smith")
        assert_equal(customer.last_name, "Smith")
    end
end