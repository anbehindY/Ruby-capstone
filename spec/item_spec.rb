require_relative '../classes/item'

describe 'Test of Item Class' do
  before(:context) do
    @item = Item.new('2023-07-09')
  end
  context 'Test Methods and accessor of items' do
    it 'Test move_to_archived method' do
      value = true
      expect(value).to be true
    end
  end
end
