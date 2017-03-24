require './calculator.rb'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < Minitest::Test

  def test_it_can_add_two_integers
    calculator = Calculator.new
    assert_equal calculator.add(2, 2), 4
  end

  def test_it_can_add_two_integers_including_decimal
    calculator = Calculator.new
    assert_equal calculator.add(2.1, 2.1), 4.2
  end

  def test_it_can_add_two_integers_when_negative_numbers_are_passed_in
    calculator = Calculator.new
    assert_equal calculator.add(-2, 3), 1
  end

  def test_it_can_subtract_two_integers
    calculator = Calculator.new
    assert_equal calculator.subtract(10, 3), 7
  end

  def test_it_can_subtract_two_integers_including_decimal
    calculator = Calculator.new
    assert_equal calculator.subtract(10.5, 3.1), 7.4
  end

  def test_it_can_subtract_a_negative_integer_from_a_positive_integer
    calculator = Calculator.new
    assert_equal calculator.subtract(10, -3), 13
  end

  def test_it_can_multiply_two_integers
    calculator = Calculator.new
    assert_equal calculator.multiply(2, 10), 20
  end

  def test_it_can_multiply_two_integers_including_decimal
    calculator = Calculator.new
    assert_equal calculator.multiply(2.2, 10.2), 22.44
  end

  def test_it_can_multiply_negative_integers
    calculator = Calculator.new
    assert_equal calculator.multiply(-2, 10), -20
  end

  def test_it_can_divide_one_integer_by_another_integer
    calculator = Calculator.new
    assert_equal calculator.divide(20, 10), 2
  end

  def test_it_can_divide_one_integer_by_another_integer_including_decimal
    calculator = Calculator.new
    assert_equal calculator.divide(22.44, 10.2), 2.2
  end

  def test_it_can_divide_a_negative_integer_by_a_positive_integer
    calculator = Calculator.new
    assert_equal calculator.divide(10, -2), -5
  end

  def test_it_will_return_nil_when_the_numberator_is_nil
    calculator = Calculator.new
    assert_nil calculator.divide(nil, 10)
  end

  def test_it_will_return_nil_when_the_denominator_is_nil
    calculator = Calculator.new
    assert_nil calculator.divide(10, nil)
  end

end
