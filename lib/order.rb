require_relative 'menu'

class Order
  attr_accessor :menu, :selection, :sub_total

  def initialize(menu = Menu.new)
    @menu = menu
    @selection = []
    @sub_total = 0
  end

  def view_menu
    @menu.items
  end
end
