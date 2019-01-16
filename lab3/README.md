## Laboratory work 3

In this laboratory work where implemented 2 Behavioral Patterns (Observer, Iterator), 1 Structural Pattern (Facade), 1 Creational Pattern (Factory Method) using ruby.

Tha basic idea was to have a car company that produces different brands and has staff that is constructing this cars.

[Iterator](https://github.com/sspatari/DesignPatterns/blob/master/lab3/behaviour_patterns/iterator.rb) is a class that is created using a list and is used to iterate through it's elements.

```ruby
class Iterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def item
    @array[@index]
  end

  def next_item
    value = item
    @index += 1
    value
  end

  def reset
    @index = 0
  end

  def my_each
    reset
    yield next_item while has_next?
  end
end
```

Usage:
```ruby
Iterator.new(staff1.select(&:can_work?)).my_each do |worker|
  mercedes_suv.add_staff(worker)
end

Iterator.new(staff2.select(&:can_work?)).my_each do |worker|
  mercedes_suv.add_staff(worker)
end
```


[StaffObserver](https://github.com/sspatari/DesignPatterns/blob/master/lab3/behaviour_patterns/staff_observer.rb) is a module that is included inside [Brand](https://github.com/sspatari/DesignPatterns/blob/master/lab3/creational_patterns/brand.rb) base class

```ruby
module StaffObserver
  def initialize
    @observers = []
  end

  def add_staff(observer)
    @observers << observer
  end

  def delete_staff(observer)
    @observers.delete(observer)
  end

  def notify_staff
    @observers.each do |observer|
      observer.work(self)
    end
  end
end
```


[factory_method](https://github.com/sspatari/DesignPatterns/blob/master/lab3/creational_patterns/factory_method.rb) is a method that creates object in dependence of type argument.

```ruby
def factory_method(brand, type)
  return Mercedes.new(type) if brand == 'mercedes'
  return Huyndai.new(type) if brand == 'huyndai'
end
```

Usage:
```ruby
mercedes_suv = factory_method('mercedes', 'suv')
huyndai_sedan = factory_method('huyndai', 'sedan')
```

[PersonnelFacade](https://github.com/sspatari/DesignPatterns/blob/master/lab3/structural_patterns/personnel_facade.rb) is a facede that simulats complex logic of detecting is a staff member is available for work.

```ruby
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
```

Usage:
```ruby
staff_names1 = %w[Bob Stas Marry]
staff_names2 = %w[Cris Nacho]

staff1 = staff_names1.map { |name| PersonnelFacade.new(name) }
staff2 = staff_names2.map { |name| PersonnelFacade.new(name) }

Iterator.new(staff1.select(&:can_work?)).my_each do |worker|
  mercedes_suv.add_staff(worker)
end

Iterator.new(staff2.select(&:can_work?)).my_each do |worker|
  mercedes_suv.add_staff(worker)
end
```



