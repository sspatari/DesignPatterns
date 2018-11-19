require_relative './concrete_beverage_strategy'

class BeverageStrategyFactory
  def initialize
    @beverage_strategy_pool = {}
  end

  def get_flyweight(key)
    if @beverage_strategy_pool.key?(key)
      puts 'Using existing strategy'
      @beverage_strategy_pool[key]
    else
      strategy = nil
      case key
      when 'manual'
        sleep 2
        strategy = ManualBeverageStrategy.new
      when 'machine'
        sleep 2
        strategy = MachineBeverageStrategy.new
      end
      @beverage_strategy_pool[key] = strategy
      puts 'New strategy started'
      strategy
    end
  end
end
