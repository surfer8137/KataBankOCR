
 class Checksum

   ERROR = -1

   class << self
     def calculate(account_number)
       return ERROR unless valid_format?(account_number)

       checksum_formula(account_number)
     end

     def valid_format?(account_number)
       return true if account_number[/\D/].nil?
       return false
     end

     def checksum_formula(value)
       (value[-1].to_i + 2*value[-2].to_i +
        3*value[-3].to_i + 4*value[-4].to_i +
        5*value[-5].to_i + 6*value[-6].to_i +
        7*value[-7].to_i + 8*value[-8].to_i +
        9*value[-9].to_i) % 11
   end
  end
 end
