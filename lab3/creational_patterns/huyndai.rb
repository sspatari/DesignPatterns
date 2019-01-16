require_relative './brand'

class Huyndai < Brand
  def initialize(type)
    super(type, self.class)
  end
end
