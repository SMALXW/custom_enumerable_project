module Enumerable
  # Your code goes here

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method

  def my_each_with_index
    if block_given?
      i = 0
      for element in self do
        yield element, i
        i += 1
      end
    end
    self
  end


end
class Array
  # Define my_each here
  def my_each
    if block_given?
      i = 0
      until i == self.length do
        yield(self[i])
        i += 1
      end
    end
    self
  end
end