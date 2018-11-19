class BeverageStrategy
  def make_beverages
    raise NotImplementedError, 'make() must be defined in subclass'
  end
end
