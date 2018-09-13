# Part 1

def unique_array(a)
  # ADD YOUR CODE HERE
  a.uniq
end

def two_sum?(a, n)
  a.each_with_index do |x,i|
    a.each_with_index do |y,j|
      return true if i != j && x+y == n
    end
  end
  return false
end

def group_anagrams(a)
	a.group_by{|x| x.downcase.chars.sort }.values
end

# Part 2

def palindrome?(s)
  r = s.reverse
  return s == r
end

def remove_and_append_vowels(s)
  match = s.scan(/[aeiouAEIOU]/).join
  s.gsub(/[aeiouAEIOU]/, '') + match
end

def highest_frequency_word(s)
  x = s.downcase.split(/\W+/)
  h = Hash.new(0)
  x.each do |i|
    h[i] = h[i] + 1
  end
  max = 0
  h.each_value { |i|
    max = i if i > max
  }
  return h.key(max)
end

# Part 3

class Book
	attr_reader :name, :price # creates getter methods
	attr_writer :name, :price # creates the setter methods

	def initialize(name, price)
		@name = name
		raise ArgumentError.new("Name empty") if (@name.nil? || @name == '')
		@price = price
		raise ArgumentError.new("Price is either negative or zero") if (@price.nil? || @price <= 0)
	end

	def formatted_price()
		str = self.price.to_s
		if str.include?('.')
			a, b = str.split('.')
			if a == "0"
				if b[0] == "0" and b[1] != "1"
					return "#{b[1]} cents only"
				elsif b[0] == "0" and b[1] == "1"
					return "#{b[1]} cent only"
				elsif b.to_i < 10
					return "#{b + "0"} cents only"
				else
					return "#{b} cents only"
				end

			elsif a == "1"
				if b[0] == "0" and b[1] != "1"
					return "#{a} dollar and #{b[1]} cents only"
				elsif b[0] == "0" and b[1] == "1"
					return "#{a} dollar and #{b[1]} cent only"
				elsif b.to_i < 10
					return "#{a} dollar and #{b + "0"} cents only"
				else
					return "#{a} dollar and #{b} cents only"
				end

			else
				if b[0] == "0" and b[1] != "1"
					return "#{a} dollars and #{b[1]} cents only"
				elsif b[0] == "0" and b[1] == "1"
					return "#{a} dollars and #{b[1]} cent only"
				elsif b.to_i < 10
					return "#{a} dollars and #{b + "0"} cents only"
				else
					return "#{a} dollars and #{b} cents only"
				end
			end
		else
			if (str == '1')
				return '1 dollar only'
			else
				return str + " dollars only"
			end
		end
	end

end


puts group_anagrams(['buster','gautam','buster'])