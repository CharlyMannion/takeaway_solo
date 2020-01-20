require 'order'
require 'menu'

describe Order do
  let(:menu_dbl) { double :menu, items: { :cod => 12, :chips => 5 } }
  subject(:order) { described_class.new(menu_dbl) }

  describe '#initialize' do
    it 'should have the chosen menu' do
      expect(order.menu).to eq(menu_dbl)
    end
    it 'should have an empty selection' do
      expect(order.selection).to eq([])
    end
    it 'should have a subtotal of 0' do
      expect(order.sub_total).to eq(0)
    end
  end

  describe '#view_menu' do
    it 'should show you the menu items' do
      expect(order.view_menu).to eq({ :cod => 12, :chips => 5 })
    end
  end

  describe '#choose' do
    it 'should add a chosen item to selections' do
      order.choose(:cod)
      expect(order.selection).to eq([:cod])
    end
    it 'should raise an error if the item selected isnt on the menu' do
      expect { order.choose(:chicken) }.to raise_error "Item not available"
    end
    it 'should add to the sub total' do
      order.choose(:cod)
      expect(order.sub_total).to eq(12)
    end
  end

  describe '#confirm' do
    before do
      allow(order).to receive(:send_text)
    end
    it 'should create an instance of message' do
      expect(order).to receive(:send_text)
      order.confirm
    end
  end
end
