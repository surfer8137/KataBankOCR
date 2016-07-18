
 class Checksum

   def self.calculate(account_number) 
     return -1 unless account_number[/\D/].nil?

     checksum_formula(account_number)
   end

   def self.checksum_formula(value)
     (value[-1].to_i + 2*value[-2].to_i +
      3*value[-3].to_i + 4*value[-4].to_i +
      5*value[-5].to_i + 6*value[-6].to_i +
      7*value[-7].to_i + 8*value[-8].to_i +
      9*value[-9].to_i) % 11
   end

 end
