# Problem #2

Create a Ruby calculator that has a functions to add/subtract/multiply/divide. It should allow me to do something like this.
```
Calc = Calculator.new()
Calc.add(2, 2)     // returns 4
Calc.subtract(10, 3) // returns 7
Calc.subtract(10, -3) // returns 13
Calc.multiply(2,10) // returns 20
Calc.divide(20,10) // returns 2
Calc.divide(null,10) // returns null
```
To use this project, please clone the repo called flock_calculator and change directories into flock_calculator.

To run the test suite, make sure you’re in the flock_calculator directory and run the following command in the command line interface:
ruby calculator_test.rb

There are several tests and they should all be passing. I like to use minitest. Some folks prefer Rspec because it is more expressive. I’m proficient at RSpec, but for this project minitest will be fine. I also like to use minitest/pride because the output of a passing test suite is a series of rainbow dots. And who doesn’t want a little color in their lives?

## Nicole's Methodology for creating the Calculator class and CalculatorTest class:

According to the directions for Problem #2, a new instance of a Calculator should not be initialized with any arguments. I can tell because the example provided looks like this:
```
Calc = Calculator.new()
```
If there were supposed to be arguments in the initialize method, the parenthesis next to .new would hold data. Since there’s no data in the example I can reasonably assume a def initialize method is not needed.

The first test I wrote got deleted. The first test I like to write in a project is to test the class exists:
```
require './calculator.rb'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < Minitest::Test
  def test_it_has_a_class
    assert Calculator
  end
end

```
The calculator.rb file simply looks like this:
```
class Calculator
end
```

I use this practice to make sure the test file and the file containing the logic are “wired up” correctly. It’s not uncommon to make a mistake when requiring the file with the logic in the test file. If I run the test, it *should* pass. But if there is a mistake in the set up, I’ll know right away because I’ll get an error like this:
```
cannot load such file -- ./wrong_path_to_calculator.rb (LoadError)
```
Another mistake to avoid is misspelling of class names. If I make a spelling mistake I’ll get an error saying “uninitialized constant.” This is why it’s good to start with a test that simply asserts the class exists. It helps me to catch any errors that are not a result of the logic failing but the result of a test suite that hasn’t been properly set up. A problem I’ve had to overcome as  a rookie coder is be able to isolate where an issue is happening so I can correct it. If there’s too much going on in a test, it becomes hard to pinpoint the issue.

Its fairly easy to avoid spelling mistakes using Atom as my text editor. Atom has an auto-complete function that tries to auto-populate word it’s already seen. My biggest spelling issue is actually within Rails because I’m constantly spelling “params” as “parmas”. That one is pretty easy to debug because I’ve done it about a thousand times.

After I got the “it has a class” test to pass, I deleted it and added the next test to make sure the .add method can sum two integers. The test case provided in the problem shows that the .add function should take two integers as parameters. The example shows that .add(2,2) should return 4, so that is what I wrote as the first test. I named the params “integer_1” and “integer_2” because they are easily readable. I could have used “a” and “b” or “int1” and “int2”. I’ve come to realize that having readable code is pretty important. If I had used “a” and “b” it would have confused a person reading the code because letters are typically strings. If I used “int1” and “int2”, it might confuse a reader who didn’t know I was trying to abbreviate the word integer as “int”. The computer will execute the code no matter what I call the parameters, so I may as well make it easy on everyone and name variables and parameters in way that is logical to humans.

The next test I wrote is that the .add method should be able to add numbers with decimals properly. I was actually expecting the test to fail because I thought I had to tack on a .to_f method to the integers within the method to turn them into floats. But when the test passed, I remembered that an integer like 2.2 is already a float. This brings me to another coding philosophy: I try to anticipate what the test is going to do. I may be wrong in my assumption, but it the practice of anticipating a result helps me to stay on the right track. If I’m astonished by an outcome, that’s a pretty big signal that something is amiss either with the test or the logic.

Since the example provided had a test case where the .subtract method should be able to deal with negative numbers, I also tested the rest of the methods to ensure they could calculate correctly when dealing with negative numbers.

I tested each method with decimal numbers as well. Its important to test the corner cases to make sure that there are no surprises, especially in a production environment where users are depending on the software to output reliable data.

The final prompt in the outline of the problem is to make a .divide function. I called the parameters “numerator” and “denominator” because it’s human-readable and the words “numerator” and “denominator” have a specific meaning when dealing with division.

I used a ternary operator, which is a way to compress an if/else statement into a single line. The requirement in the prompt is that the first argument should be divided by the second argument and return the value. But if the first argument is nil, then the return value should be nil.

Ternary operators are structured like this:
```
if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
```
I put the condition before the question mark. The condition is checking to see if the numerator is a nil value. If the condition before the question mark is true, the value between the question mark and the colon is returned. If the condition before the question mark is false, the value after the colon is returned.

Originally, the method was set up to only handle the case where the numerator was nil, but I reasoned that it should probably return nil if the denominator is passed in as nil. This wasn’t in the instructions, but it makes sense to handle both cases. The condition started out as:
```
numerator == nil
```
But I added the “or pipes” (they look like this: ||) and put another condition so it now reads:
```
numerator.nil? ||  denominator.nil?
```
The condition is checking to see if numerator is nil, if the denominator is nil, or if both values are valid integers. Based on how the condition is evaluated, the code will behave differently. There are tests for each of the possibilities.

I’m very excited by the opportunity to join such a supportive and collaborative team. The amount of learning I still need to do is endless. But I’m the kind of person who is persistent and undaunted by the vast unknown. Every problem can be broken down into smaller components and each component can be tackled with some insight, some Googling and by collaborating with more experienced developers who may have solved the same problem in the past.
