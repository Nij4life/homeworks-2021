require_relative 'array_refinements'
require 'pry'

using ArrayRefinement

# Testing module ArrayRefinement refined class Array methods
RSpec.describe ArrayRefinement do
  let(:arr) { [1, 2, 3, 4, 5] }

  describe '.each' do
    context 'case no block given' do
      it 'returns nil' do
        expect(arr.each).to eql(nil)
      end
    end

    context 'case block given' do
      it 'not modified'  do
        expect(arr.each { |e| e * 1 }).to eql([1, 2, 3, 4, 5])
      end
    end
  end
end
