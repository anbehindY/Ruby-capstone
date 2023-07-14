require_relative '../classes/game'

describe 'Testing Game' do
  before(:context) do
    @game = Game.new('2023-07-12', true, '2020-07-01')
  end

  context 'Testing  game instance and Method' do
    it 'Testing Multiplayer instance' do
      expect(@game.multiplayer).to be true
    end

    it 'Testing Last played Date instance' do
      expect(@game.last_played_at).to eq '2023-07-12'
    end

    it 'Testing class inherited' do
      expect(Game).to be < Item
    end
  end
end
