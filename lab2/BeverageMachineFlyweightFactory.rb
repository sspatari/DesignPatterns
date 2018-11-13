require './ConcreteBeverageMachineFlyweight'

class BeverageMachineFlyweightFactory
  def initialize
    @beverageMachineFlyweightPool = Hash.new
  end

  def getFlyweight(key)
    if @beverageMachineFlyweightPool.has_key?(key)
      puts "Using existing machine"
      return @beverageMachineFlyweightPool[key]
    else
      obj = ConcreteBeverageMachineFlyweight.new(key)
      @beverageMachineFlyweightPool[key] = obj
      puts "New drink machine started"
      return obj
    end
  end
end
