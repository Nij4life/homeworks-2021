require_relative 'array_refinements'

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
      it 'not modified' do
        expect(arr.each { |e| e * 2 }).to eql([1, 2, 3, 4, 5])
      end
    end
  end

  describe '.map' do
    context 'case no block given' do
      it 'returns nil' do
        expect(arr.map).to eql(nil)
      end
    end

    context 'case block given' do
      it 'modified' do
        expect(arr.map { |e| e * 2 }).to eql([2, 4, 6, 8, 10])
      end
    end
  end

  describe '.select' do
    context 'case no block given' do
      it 'returns nil' do
        expect(arr.select).to eql(nil)
      end
    end

    context 'case block given' do
      it 'selects objects with a suitable condition' do
        expect(arr.select { |e| e.odd? }).to eql([1, 3, 5])
      end

      it 'result and initial object are different' do
        expect(arr.select { |e| e * 2 }.object_id).not_to eql(arr)
      end
    end
  end
end
