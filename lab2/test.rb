require './BeverageMachineFlyweightFactory'

beverageTypes = ["beer", "coffee", "tee", "beer", "coffee", "tee"]

beverageMachineFlyweightFactory = BeverageMachineFlyweightFactory.new

beverageTypes.each do |beverageType|
  machine = beverageMachineFlyweightFactory.getFlyweight(beverageType)
  machine.make(Time.now)
end
