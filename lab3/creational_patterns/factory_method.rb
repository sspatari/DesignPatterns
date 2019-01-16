require_relative './mercedes'
require_relative './huyndai'

def factory_method(brand, type)
  return Mercedes.new(type) if brand == 'mercedes'
  return Huyndai.new(type) if brand == 'huyndai'
end
