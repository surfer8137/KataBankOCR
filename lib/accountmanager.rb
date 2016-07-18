require_relative 'checksum.rb'

class AccountManager

  def self.check(number)
    validate = Checksum.calculate(number)

    puts
    puts number
    puts validate

    return number + ' ILL' if validate == -1
    return number + ' ERR' if validate != 0
    return number          if validate == 0
  end
end
