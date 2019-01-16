class PersonnelFacade
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def work(car)
    puts "#{@name} started working on #{car.brand_name} #{car.type}"
  end

  def can_work?
    return false unless Knowledge.new.available?(@name) &&
                        Health.new.healthy?(@name) &&
                        Hungry.new.hungry?(@name)

    true
  end
end

class Knowledge
  def available?(name)
    # complex logic
    true
  end
end

class Health
  def healthy?(name)
    # complex logic
    true
  end
end

class Hungry
  def hungry?(name)
    # complex logic
    true
  end
end
