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

  def choose(item)
    fail "Item not available" if not_on_menu(item)

    @selection << item
    @sub_total += @menu.items[item]
  end

  def confirm
    "Thanks for your order of: #{@selection.join(", ")}" 
  end

  private
  def not_on_menu(item)
    if @menu.items.key?(item)
      false
    else
      true
    end
  end
end
