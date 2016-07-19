require 'digit'

class EntryParser
  LINES = 4
  CHARS_PER_DIGIT = 9
  CHARS_PER_DIGIT_PER_LINE = 3
  NUMBER_OF_DIGITS = 9

  class << self
    def parse(input)
      result = ''
      NUMBER_OF_DIGITS.times do |digit_position|
        digit_chars = parse_digit(input, digit_position)
        result << Digit.parse(digit_chars)
      end
      result
    end

    private

    def parse_digit(input, position)
      digit_initial_position = calculate_initial_position(position)
      [
        chars_from(input, digit_initial_position, first_line),
        chars_from(input, digit_initial_position, second_line),
        chars_from(input, digit_initial_position, third_line),
        chars_from(input, digit_initial_position, fourth_line)
      ].join('')
    end

    def calculate_initial_position(position)
      CHARS_PER_DIGIT_PER_LINE * position
    end

    def chars_from(string, from, position)
      string[from + position, CHARS_PER_DIGIT_PER_LINE]
    end

    def number_of_chars_in_a_line
      NUMBER_OF_DIGITS * CHARS_PER_DIGIT_PER_LINE
    end

    def first_line
      0
    end

    def second_line
      number_of_chars_in_a_line
    end

    def third_line
      number_of_chars_in_a_line * 2
    end

    def fourth_line
      number_of_chars_in_a_line * 3
    end
  end
end
