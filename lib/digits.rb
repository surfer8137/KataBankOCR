
class Digits
  class << self
    ONE = '   ' +
          '  |' +
          '  |' +
          '   '
    TWO = ' _ ' +
          ' _|' +
          '|_ ' +
          '   '
    THREE = ' _ ' +
            ' _|' +
            ' _|' +
             '   '
     FOUR =  '   ' +
             '|_|' +
             '  |' +
             '   '
     FIVE =  ' _ ' +
             '|_ ' +
             ' _|' +
             '   '
     SIX =   ' _ ' +
             '|_ ' +
             '|_|' +
             '   '
     SEVEN = ' _ ' +
             '  |' +
             '  |' +
             '   '
     EIGHT = ' _ ' +
             '|_|' +
             '|_|' +
             '   '
     NINE =  ' _ ' +
             '|_|' +
             ' _|' +
             '   '
     ZERO =  ' _ ' +
             '| |' +
             '|_|' +
             '   '

    def find(digit)
      all_digits.each do |string, number|
        return number if digit.eql?(Digit.new(string))
      end
    end

    private

    def all_digits
      {
        ONE => '1', TWO => '2', THREE => '3',FOUR => '4',
        FIVE => '5', SIX => '6', SEVEN => '7', EIGHT => '8',
        NINE => '9', ZERO => '0'
      }
    end
  end
end
