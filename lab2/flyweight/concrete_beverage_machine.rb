require_relative './beverage_machine'

class ConcreteBeverageMachine < BeverageMachine
  def initialize(key)
    if key == 'coffee'
      sleep 2
      @machine_name = 'coffeeMachine'
    elsif key == 'tee'
      sleep 2
      @machine_name = 'teeMachine'
    end
  end

  def make(name)
    puts "Creating #{name} with #{@machine_name}"
  end
end
