require_relative 'menu'

class Order
  attr_accessor :menu

  def initialize(menu = Menu.new)
    @menu = menu
  end
end
