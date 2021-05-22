require_relative '../a_serikov_hw_03_t_04'

describe 'task4' do
  context 'return the count of english letters and digits in that string' do
    it { expect(task4("hel2!lo")).to eql(letters: 5, digits: 1) }
    it { expect(task4("wicked .. !")).to eql(letters: 6, digits: 0) }
    it { expect(task4("абракадабра")).to eql(letters: 0, digits: 0) }
    it { expect(task4("😀😀😀😀😀")).to eql(letters: 0, digits: 0) }
  end
end
