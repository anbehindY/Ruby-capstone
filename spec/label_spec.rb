require_relative '../classes/label'

describe 'Testing Label classes' do
  before(:context) do
    # (title, color)
    @label = Label.new('The Birds', 'blue')
  end

  context 'Testing Label instance and Method' do
    it 'Testing title instance' do
      expect(@label.title).to eq 'The Birds'
    end

    it 'Testing color instance ' do
      expect(@label.color).to eq 'blue'
    end

    it 'Testing add_items method' do
      @item = Item.new('2020-01-01')
      @label.add_item(@item)
      expect(@label.items).to include(@item)
    end
  end
end
