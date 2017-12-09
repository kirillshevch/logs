describe Logs::NavPaginationHelper do
  describe '#pages_range' do
    before do
      @pages = 28
    end

    it 'returns first range array' do
      @page = 5

      expect(pages_range).to eq((1..10).to_a)
      expect(pages_range.length).to eq 10
    end

    it 'returns middle range array' do
      @page = 12

      expect(pages_range).to eq((11..20).to_a)
      expect(pages_range.length).to eq 10
    end

    it 'returns last range array' do
      @page = 25

      expect(pages_range).to eq((19..28).to_a)
      expect(pages_range.length).to eq 10
    end
  end
end
