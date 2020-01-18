require 'menu'

describe Menu do
  subject(:menu) { described_class.new }

  it 'should respond to items' do
    expect(menu).to respond_to :items
  end

  describe '#initialize' do
    it 'should have no default menu items' do
      expect(menu.items).to eq({})
    end
  end
end
