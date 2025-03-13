class Calculator
    def add(input_str)
        return 0 if input_str.empty?

        # default delim
        delimiter = ","

        # it handles when the input string starts with //
        if input_str.start_with?("//")
            input_str = input_str.gsub("//", "")
            delimiter = input_str[0]
        end

        # Replacing \n with delimiter
        input_str = input_str.gsub("\n", delimiter)

        # splits the input string into an array of substrings
        str_array = input_str.split(delimiter)

        # converts to an integer array
        nums = str_array.map(&:to_i)

        sum = 0
        nums.each {|num| sum += num}
        return sum
    end
end