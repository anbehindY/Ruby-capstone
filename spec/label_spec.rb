require_relative '../classes/label'

describe Label do
  label = Label.new('Literature', 'red')

  context 'when testing the Label class' do
    it 'should return the correct label name' do
      expect(label.title).to eq('Literature')
    end
  end

  context 'when testing the Label class' do
    it 'should return the correct label color' do
      expect(label.color).to eq('red')
    end
  end

  context 'when testing the Label class' do
    it 'should return the correct label id' do
      expect(label.id).to be_a(Integer)
    end
  end
end
