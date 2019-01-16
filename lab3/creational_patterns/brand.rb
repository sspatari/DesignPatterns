class Brand
  def initialize(type, brand_name)
    @type = type.capitalize
    @brand_name = brand_name
  end

  def greeting
    puts "#{@brand_name} #{@type} greets you"
  end
end
