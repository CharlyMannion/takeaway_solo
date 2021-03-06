require_relative 'menu'
require_relative 'message'

class Order
  attr_accessor :menu, :selection, :sub_total, :message_class, :message

  def initialize(menu = Menu.new, message_class = Message)
    @menu = menu
    @selection = []
    @sub_total = 0
    @message_class = message_class
    @message = @message_class.new
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
    send_text
  end

  private
  def not_on_menu(item)
    if @menu.items.key?(item)
      false
    else
      true
    end
  end

  def send_text
    # chosen_selection = @selection
    # @message = @message_class.new(chosen_selection)
    @message.send(chosen_selection)
  end
  # def msg
  #   "Thanks for your order of: #{@selection.join(", ")}"
  # end
end
