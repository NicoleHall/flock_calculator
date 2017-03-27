class Calculator

def add(integer_1, integer_2)
  integer_1 + integer_2
end

def subtract(integer_1, integer_2)
  integer_1 - integer_2
end

def multiply(integer_1, integer_2)
  integer_1 * integer_2
end

def divide(numerator, denominator)
  numerator.nil? ||  denominator.nil? ? nil : numerator / denominator
end

end
