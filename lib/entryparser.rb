require_relative 'digit.rb'

class EntryParser

  def self.parse(to_convert)
    result = ''
    chars_per_line  = to_convert.length / Digit::LINES
    to_loop = chars_per_line / Digit::CHARS_PER_LINE
    to_loop.times do |digit|
      base_number = Digit::CHARS_PER_LINE * digit
      line1 =  get_chars(to_convert,base_number,0) # [base_number                 , end_number]
      line2 =  get_chars(to_convert,base_number,chars_per_line) #to_convert[base_number + (chars_line )   , end_number + (chars_line)]
      line3 =  get_chars(to_convert,base_number,chars_per_line * 2) #to_convert[base_number + (chars_line * 2), end_number + (chars_line * 2)]
      line4 =  get_chars(to_convert,base_number,chars_per_line * 3) #to_convert[base_number + (chars_line * 3), end_number + (chars_line * 3)]
      digit_char = line1 + line2 + line3 + line4
      result << Digit.parse(digit_char)
    end
    result
  end

  def self.get_chars(string,from,offset)
    string[from + offset, 3]
  end


end


#Debug


#      puts digit
#      puts "-#{line1}-"
#      puts "-#{line2}-"
#      puts "-#{line3}-"
#      puts " -#{line4}-"
#      puts "=="
