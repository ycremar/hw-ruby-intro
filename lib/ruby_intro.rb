# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each{ |e|
    s += e
  }
  return s
end


def max_2_sum arr
  m1, m2 = nil, nil
  arr.each{ |e|
    m2 = e if not m2 or e > m2
    m1, m2 = m2, m1 if not m1 or m2 > m1
  }
  m1 = 0 if not m1
  m2 = 0 if not m2
  return m1+m2
end


def sum_to_n? arr, n
  if arr.length > 1
    sarr = arr.sort
    sarr.each_with_index { |e1, i|
      if e1 < n
        sarr[i+1..-1].each { |e2|
          return true if e1 + e2 == n
        }
      end
    }
  end
  return false
end

# Part 2

def hello(name)
  return ["Hello,", name].join(" ")
end

def starts_with_consonant? s
  return s =~ /^[^aeiou\W]\w*/i
end

def binary_multiple_of_4? s
  return "0"+s =~ /^[01]*00$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN is not string' unless isbn.is_a? String
    raise ArgumentError, 'ISBN is empty' unless isbn.length > 0
    raise ArgumentError, 'Price is not numeric' unless price.is_a? Numeric
    raise ArgumentError, 'Invalid price' unless price > 0
    @isbn = isbn
    @price = price
  end
  def isbn=(new_amount)
    raise ArgumentError, 'ISBN is not string' unless isbn.is_a? String
    raise ArgumentError, 'ISBN is empty' unless isbn.length > 0
    @isbn = new_amount
  end
  def price=(new_amount)
    raise ArgumentError, 'Price is not numeric' unless price.is_a? Numeric
    raise ArgumentError, 'Invalid price' unless price > 0
    @price = new_amount
  end
  def price
    @price
  end
  def isbn
    @isbn
  end
  def price_as_string
    return "$%.2f" % [@price]
  end
end
