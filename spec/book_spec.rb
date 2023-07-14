require_relative '../classes/book'

describe 'Testing Book Class' do
  before(:context) do
    # (publish_date, publisher, cover_state, archived: false)
    @book = Book.new('2023-09-09', 'Daniel', 'bad', archived: false)
  end

  context 'Testing  Book instance and Method' do
    it 'Testing cover state instance' do
      expect(@book.cover_state).to eq('bad')
    end

    it 'Testing Last published Date instance' do
      expect(@book.publish_date).to eq '2023-09-09'
    end

    it 'Testing Book class inherited' do
      expect(Book).to be < Item
    end
  end
end
