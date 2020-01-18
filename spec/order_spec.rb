require 'order'
require 'menu'

describe Order do
  let(:menu_dbl) { double :menu, items: { :cod=>12, :chips=>5 } }
  subject(:order) { described_class.new(menu_dbl) }

  describe '#initialize' do
    it 'should have the chosen menu' do
      expect(order.menu).to eq(menu_dbl)
    end
  end

  describe '#view_menu' do
    it 'should show you the menu items' do
      expect(order.view_menu).to eq({ :cod=>12, :chips=>5 })
    end
  end
end
