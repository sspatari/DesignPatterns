class BeverageMachineFlyweight
  def make
    raise NotImplementedError, 'makeCoffee() must be defined in subclass'
  end
end
