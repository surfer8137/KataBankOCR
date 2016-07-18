
class Digit

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


  PARSED = {ONE => '1', TWO => '2', THREE => '3',FOUR => '4',
            FIVE => '5', SIX => '6', SEVEN => '7', EIGHT => '8',
            NINE => '9', ZERO => '0'}
  LINES = 4
  CHARS_PER_DIGIT = 9
  CHARS_PER_LINE = 3

  def self.eql?(digit,digit2)
    digit.length.times do |i|
      return false if digit[i] != digit2[i]
    end
    true
  end

  def self.parse(digit)
     PARSED.each do |key, value|
       if self.eql?(key,digit)
          return value
       end
    end
    '?'
  end

end
