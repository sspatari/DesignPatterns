require_relative './beverage_strategy'

class ManualBeverageStrategy < BeverageStrategy
  def make_beverages(name, coffee)
    puts "#{name} is preparing #{coffee.cost }$ coffee manually made of " + coffee.ingridient
  end
end

class MachineBeverageStrategy < BeverageStrategy
  def make_beverages(name, coffee)
    puts "#{name} is preparing #{coffee.cost }$ coffee using machine made of " + coffee.ingridient
  end
end
