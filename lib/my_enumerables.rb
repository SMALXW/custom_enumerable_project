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

  def my_select
    results = []
    my_each { |element| results.push(element) if yield element }
    results
  end

  def my_all?
    if block_given?
      result = true
      my_each { |i| result = false if yield(i) == false}
      result
    else
      self
    end
  end

  def my_any?
    if block_given?
      result = false
      my_each { |i| result = true if yield(i) == true}
      result
    else
      self
    end
  end

  def my_none?
    if block_given?
      result = true
      my_each { |i| result = false if yield(i)}
      result 
    else
      self
    end
  end

  def my_count
    count = 0
    if block_given?
      my_each { |i| count+=1 if yield(i) == true}
      count
    else 
      my_each { |i| count+=1}
      count
    end
  end

  def my_map
    if block_given?
      result = []
      my_each do |i| 
        result.push(yield(i))
      end
      result
    else
      self
    end
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