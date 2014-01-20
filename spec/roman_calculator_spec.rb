require_relative '../lib/roman_calculator'

describe RomanCalculator do

  context ".add" do
    it 'instantiates' do
      subject.should be_instance_of(RomanCalculator)
    end

    it 'adds I and I' do
      RomanCalculator.add('I', 'I').should eq('II')
    end

    it 'adds II and II' do
      RomanCalculator.add('II', 'II').should eq('IIII')
    end

    it 'adds II and III' do
      RomanCalculator.add('II', 'III').should eq('V')
    end

    it 'adds III and III' do
      RomanCalculator.add('III', 'III').should eq('VI')
    end

    it 'adds IIII and III' do
      RomanCalculator.add('IIII', 'III').should eq('VII')
    end

    it 'adds IIIII and IIIII' do
      RomanCalculator.add('IIIII', 'IIIII').should eq('X')
    end

    it 'adds V and V' do
      RomanCalculator.add('V', 'V').should eq('X')
    end

    it 'adds X and X' do
      RomanCalculator.add('X', 'X').should eq('XX')
    end

    it 'adds XXI and XXI' do
      RomanCalculator.add('XXI', 'XXI').should eq('XXXXII')
    end

    it 'adds XVI and XVI' do
      RomanCalculator.add('XVI', 'XVI').should eq('XXXII')
    end

    it 'adds XXX and XX' do
      RomanCalculator.add('XXX', 'XX').should eq('L')
    end

    it 'adds XXX and XXX' do
      RomanCalculator.add('XXX', 'XXX').should eq('LX')
    end

    it 'adds XXXXII and XXVI' do
      RomanCalculator.add('XXXXII', 'XXVI').should eq('LXVIII')
    end

    it 'adds L and L' do
      RomanCalculator.add('L', 'L').should eq('C')
    end

    it 'adds LXXVI and XXIIII' do
      RomanCalculator.should_receive(:prepare).and_return('LXXXXVIIIII')
      RomanCalculator.add('LXXVI', 'XXIIII').should eq('C')
    end
  end

  context ".prepare" do
    it 'sorts Roman numerals in descending order' do
      RomanCalculator.prepare('IVXLCDM').should eq('MDCLXVI')
    end
  end

end
