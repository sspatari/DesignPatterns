require_relative './brand'

class Mercedes < Brand
  def initialize(type)
    super(type, self.class)
  end
end
