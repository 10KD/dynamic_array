# This class just dumbs down a regular Array to be statically sized.
class StaticArray
  def initialize(length)
    @store = Array.new(length)
  end

  # O(1)
  def [](index)
    validate(index)
    @store[index]
  end
  
  # O(1)
  def []=(index, value)
    validate(index)
    @store[index] = value
  end

  protected
  attr_accessor :store

  def validate(index)
    raise "Overflow" unless index.between?(0, @store.length - 1)
  end
end
