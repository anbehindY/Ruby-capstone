require_relative '../classes/book'

describe Book do
  book = Book.new('2017-01-01', 'HarperCollins', 'bad')

  context 'when testing the Book class' do
    it 'should return the correct book title' do
      expect(book.publisher).to eq('HarperCollins')
    end
  end

  context 'when testing the Book class' do
    it 'should return the correct book cover state' do
      expect(book.cover_state).to eq('bad')
    end
  end

  context 'when testing the Book class' do
    it 'should return the correct book published date' do
      expect(book.publish_date).to eq('2017-01-01')
    end
  end

  context 'when testing the Book class' do
    it 'should return the correct book archived state' do
      expect(book.archived).to eq(false)
    end
  end
end
