## String Calculator
The `Calculator#add` method provides a way to sum numbers from a given input string, supporting various delimiters and handling negative numbers gracefully.

## Features
- Supports addition of comma-separated("1,2,3") numbers.
- Supports custom delimiters("//;\n1;2") specified at the beginning of the input string.
- Throws an exception when negative numbers("-1,2,-3") are encountered in the input string.

 ## Usage
 calculator = Calculator.new
>- calculator.add("10,20,30")       # => 60
>- calculator.add("1\n2,30")      # => 33
>- calculator.add("//;\n1;20")    # => 21
>- calculator.add("1,-2,3,-9")   # Raises: "negative numbers are not allowed: -2,-9"

## To run the test cases
` bundle exec rspec calculator_spec.rb `
