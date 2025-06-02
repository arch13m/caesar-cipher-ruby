# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe '#alphabet' do
  # Query Method -> Test the return value
  it 'returns the alphabet as a string' do
    expect(alphabet).to eq('abcdefghijklmnopqrstuvwxyz')
  end
end

describe '#alpha_lower_arr' do
  # Query Method -> Test the return value
  it 'returns the alphabet as an array' do
    expect(alpha_lower_arr).to eq(%w[a b c d e f g h i j k l m n o p q r s t u
                                     v w x y z])
  end
end

describe '#alpha_upper_arr' do
  # Query Method -> Test the return value
  it 'returns the alphabet as an array with all letters in upper case' do
    expect(alpha_upper_arr).to eq(%w[A B C D E F G H I J K L M N O P Q R S T U V
                                     W X Y Z])
  end
end

describe '#caesar_cipher' do
  context do
    let(:word) { 'Hello, world!' }

    it 'shifts with a small shift' do
      expect(caesar_cipher('Hello, world!', 4)).to eq('Lipps, asvph!')
    end
    it 'shifts with a small negative shift' do
      expect(caesar_cipher('Hello, world!', -4)).to eq('Dahhk, sknhz!')
    end

    it 'shifts with a large shift' do
      expect(caesar_cipher('Hello, world!', 30)).to eq('Lipps, asvph!')
    end
    it 'shifts with a large negative shift' do
      expect(caesar_cipher('Hello, world!', -30)).to eq('Dahhk, sknhz!')
    end
  end
end
