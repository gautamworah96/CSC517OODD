class Book
	attr_reader :name, :price # creates getter methods
	attr_writer :name, :price # creates the setter methods

	def initialize(name, price)
		@name = name
		raise ArgumentError.new("Name empty") if (@name.nil? || @name == '')
		@price = price
		raise ArgumentError.new("Price is either negative or zero") if (@price.nil? || @price <= 0)
	end

	def formatted_price(n)
		str = n.to_s
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


stallman=Book.new("gautam",45.45)
puts stallman.formatted_price(stallman.price)
