require 'spec_helper.rb'
require 'checksum.rb'

describe 'Checksum' do

  context 'Given a valid account number' do
    it 'will calculate the checksum, which will be 0' do
      #Arrangement
      valid_number = '345882865'
      expected_output = 0
      #Act
      output = Checksum.calculate(valid_number)
      #Assert
      expect(output).to eq(expected_output)
    end
  end

  context 'Given a non valid account number' do
      it 'will calcula the checksum, which will not be 0' do
        #Arrangement
        valid_number = '345882866'
        expected_output = 1
        #Act
        output = Checksum.calculate(valid_number)
        #Assert
        expect(output).to eq(expected_output)
      end
    end

end
