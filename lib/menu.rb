class Menu
  attr_accessor :items

  def initialize
    @items = {}
  end

  def add(dish, price)
    @items[dish] = price
  end
end
