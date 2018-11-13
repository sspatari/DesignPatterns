require './BeverageMachineFlyweight'

class ConcreteBeverageMachineFlyweight < BeverageMachineFlyweight
  def initialize(key)
    if key == "beer"
      sleep 2
      @machineName = "beerMachine"
    elsif key == "coffee"
      sleep 2
      @machineName = "coffeeMachine"
    elsif key == "tee"
      sleep 2
      @machineName = "teeMachine"
    end
  end

  def make(name)
    puts "Creating #{name} with #{@machineName}"
  end
end
