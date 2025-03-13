class Calculator
    def add(input_str)

        # default delim
        delimiter = ","

        # splits the input string into an array of substrings
        str_array = input_str.split(delimiter)

        # converts to an integer array
        nums = str_array.map(&:to_i)

        sum = 0
        nums.each {|num| sum += num}
        return sum
    end
end