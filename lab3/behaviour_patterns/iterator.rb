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
