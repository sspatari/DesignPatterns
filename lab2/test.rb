require './flyweight/beverage_strategy_factory'
require './decorator/coffee'

beverage_strategy_factory = BeverageStrategyFactory.new

coffee1 = Sugar.new(Milk.new(Coffee.new))
coffee2 = Honey.new(Coffee.new)

strategy1 = beverage_strategy_factory.get_flyweight("manual")
strategy2 = beverage_strategy_factory.get_flyweight("machine")
strategy3 = beverage_strategy_factory.get_flyweight("manual")
strategy4 = beverage_strategy_factory.get_flyweight("machine")
strategy3.make_beverages("Bob", coffee1)
strategy4.make_beverages("Fred", coffee2)
