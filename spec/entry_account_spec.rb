require 'spec_helper.rb'
require 'entryparser.rb'
require 'digit.rb'

describe 'EntryParser' do

  context 'Given a drawn number' do

    it 'parses it into the char 1' do
      #Arrangement
      number_without_parsing = Digit::ONE
      expected_output = '1'

      #Act
      output = EntryParser.parse(number_without_parsing)

      #Assert
      expect(output).to eq(expected_output)
    end

    it 'parses it into the char 2' do
      #Arrangement
      number_without_parsing =  ' _ ' +
                                ' _|' +
                                '|_ ' +
                                '   '
      expected_output = '2'

      #Act
      output = EntryParser.parse(number_without_parsing)

      #Assert
      expect(output).to eq(expected_output)
    end

    it 'parses it into the char 3' do
      #Arrangement
      number_without_parsing =  ' _ ' +
                                ' _|' +
                                ' _|' +
                                '   '
      expected_output = '3'

      #Act
      output = EntryParser.parse(number_without_parsing)

      #Assert
      expect(output).to eq(expected_output)
    end

    it 'parses it into the char 4' do
      #Arrangement
      number_without_parsing =  '   ' +
                                '|_|' +
                                '  |' +
                                '   '
      expected_output = '4'

      #Act
      output = EntryParser.parse(number_without_parsing)

      #Assert
      expect(output).to eq(expected_output)
    end

  end

  context 'given two numbers drawn' do

    it 'parse them into the chars 12' do
      #Arrangement
      number_without_parsing =  '    _ ' +
                                '  | _|' +
                                '  ||_ ' +
                                '      '
      expected_output = '12'

      #Act
      output = EntryParser.parse(number_without_parsing)

      #Assert
      expect(output).to eq(expected_output)
    end

  end

  context 'given 9 numbers drawn' do

    it 'parse them into the chars 123456789' do
      #Arrangement
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
