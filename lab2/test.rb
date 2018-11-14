require './flyweight/beverage_machine_factory'

beverage_types = %w[coffee tee coffee tee]

beverage_machine_factory = BeverageMachineFactory.new

beverage_types.each do |beverage_type|
  machine = beverage_machine_factory.get_flyweight(beverage_type)
  machine.make(Time.now)
end
