require 'spec_helper.rb'
require 'accountmanager.rb'

describe 'AccountChecker' do

  context 'Given a valid account' do
    it 'will return the number of the account' do
      #Arrangement
      number = '457508000'
      expected_output = '457508000'
      #Act
      output = AccountManager.check(number)
      #Assert
      expect(output).to eq(expected_output)
    end
  end

  context 'Given a non valid account' do
    it 'will return the number of the account + ERR ' do
      #Arrangement
      number = '457508001'
      expected_output = '457508001 ERR'
      #Act
      output = AccountManager.check(number)
      #Assert
      expect(output).to eq(expected_output)
    end
  end

  context 'Given a not complete number account' do
    it 'will return the number of the account + ILL ' do
      #Arrangement
      number = '45750?000'
      expected_output = '45750?000 ILL'
      #Act
      output = AccountManager.check(number)
      #Assert
      expect(output).to eq(expected_output)
    end
  end

end
