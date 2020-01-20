require_relative 'menu'
require_relative 'message'

class Order
  attr_accessor :menu, :selection, :sub_total

  def initialize(menu = Menu.new, message_class = Message)
    @menu = menu
    @selection = []
    @sub_total = 0
    @message_class = message_class
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
    msg
  end

  private
  def not_on_menu(item)
    if @menu.items.key?(item)
      false
    else
      true
    end
  end

  def msg
    "Thanks for your order of: #{@selection.join(", ")}"
  end
end
