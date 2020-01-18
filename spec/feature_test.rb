# to run in irb:
require './lib/order.rb'
require './lib/menu.rb'

# to run programme:
# ruby ./lib/order.rb
# ruby ./lib/menu.rb

# to run feature tests:
# ruby './spec/feature_test.rb'

# menu feature test:
menu = Menu.new
menu.add(:tuna, 10)
menu.add(:cod, 12)
menu.add(:chips, 5)
menu.items

# order feature test:
order = Order.new(menu)
# p order.menu
p order.view_menu
