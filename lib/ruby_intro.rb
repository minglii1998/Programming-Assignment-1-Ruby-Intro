# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  result = 0
  arr.each do |i|
    result += i
  end
  return result
end

def max_2_sum(arr)
  # YOUR CODE HERE
  result = 0
  arr.sort!
  if arr.length()==1
    result = arr[-1]
  elsif arr.length() > 1
    result = arr[-1] + arr[-2]
  end
  return result
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  map = {}
  arr.each do |i| 
    minus = number - i
    if map.key?(minus)
      return true
    else
      map.store(i,i)
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length() == 0
    return false
  end

  # judge if the input start with character
  re=/[^a-zA-Z]/ 
  if re.match(string[0]) != nil
    return false
  end

  map = {"a" => "a", "e" => "e", "i" => "i", "o" => "o", "u" => "u", "A" => "A", "E" => "E", "I" => "I", "O" => "O", "U" => "U"}
  if map.key?(string[0])
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length() == 0
    return false
  end

  # judge if the input only contains 0 1
  re=/[^0*1*\s*]/
  if re.match(string) != nil
    return false
  end

  val = string.to_i
  if val % 4 != 0
    return false
  end
  return true
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :price, :isbn

  def initialize (isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price.to_f
  end

  def price_as_string
    return format("$%.2f", @price)
  end

end
