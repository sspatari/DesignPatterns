require 'delegate'

class Coffee
  def cost
    15
  end

  def ingridient
    'coffee'
  end

  def origin
    'Colombia'
  end
end

class Decorator < SimpleDelegator
  def class
    __getobj__.class
  end
end

class Milk < Decorator
  def ingridient
    super + ', milk'
  end

  def cost
    super + 5
  end
end

class Sugar < Decorator
  def ingridient
    super + ', sugar'
  end

  def cost
    super + 1
  end
end

class Honey < Decorator
  def ingridient
    super + ', honey'
  end

  def cost
    super + 3
  end
end
