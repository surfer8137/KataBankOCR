require 'digits'


class Digit
  attr_reader :digit

  def initialize(digit)
    @digit = digit
  end

  def eql?(other)
    @digit == other.digit
  end

  def self.parse(string)
    digit = Digit.new(string)

    Digits.find(digit) || '?'
  end

end
