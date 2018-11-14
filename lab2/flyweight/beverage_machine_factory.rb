require_relative './concrete_beverage_machine'

class BeverageMachineFactory
  def initialize
    @beverage_machine_pool = {}
  end

  def get_flyweight(key)
    if @beverage_machine_pool.key?(key)
      puts 'Using existing machine'
      @beverage_machine_pool[key]
    else
      obj = ConcreteBeverageMachine.new(key)
      @beverage_machine_pool[key] = obj
      puts 'New drink machine started'
      obj
    end
  end
end
