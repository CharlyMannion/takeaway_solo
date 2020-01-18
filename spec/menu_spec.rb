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

  describe '#add' do
    it 'should add an item to the menu' do
      dish = :tuna
      price = 10
      menu.add(dish, price)
      expect(menu.items).to eq({ tuna: 10 })
    end
  end
end
