require_relative 'menu'

class Order
  attr_accessor :menu

  def initialize(menu = Menu.new)
    @menu = menu
  end

  def view_menu
    @menu.items
  end
end
