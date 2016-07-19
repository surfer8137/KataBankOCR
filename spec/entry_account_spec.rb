require 'spec_helper'
require 'entryparser'
require 'digit'

describe 'EntryParser' do

  context 'given 9 numbers drawn' do

    it 'parse them into the chars 123456789' do
      #Arrange
      number_without_parsing =   '    _  _     _  _  _  _  _ '+
                                 '  | _| _||_||_ |_   ||_||_|'+
                                 '  ||_  _|  | _||_|  ||_| _|'+
                                 '                           '
      expected_output = '123456789'

      #Act
      output = EntryParser.parse(number_without_parsing)

      #Assert
      expect(output).to eq(expected_output)
    end

  end

end
