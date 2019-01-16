require_relative '../behaviour_patterns/staff_observer'

class Brand
  include StaffObserver
  attr_reader :type, :brand_name
  def initialize(type, brand_name)
    super()
    @type = type.capitalize
    @brand_name = brand_name
  end

  def start_construction
    notify_staff
  end

  def greeting
    puts "#{@brand_name} #{@type} greets you"
  end
end
