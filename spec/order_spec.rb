require 'order'
require 'menu'

describe Order do
  subject(:order) { described_class.new }

  describe '#initialize' do
    it 'should have a menu' do
      expect(order.menu).to be_a(Menu)
    end
  end
end
