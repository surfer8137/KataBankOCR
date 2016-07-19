require_relative 'checksum.rb'

class AccountManager
  class << self
    def check(number)
      valid = Checksum.calculate(number)

      return number + ' ILL' if valid == -1
      return number + ' ERR' if valid != 0
      return number          if valid == 0
    end
  end
end
