class Roman

	attr_reader :integer, :numeral

	def initialize(integer)
		@integer = integer
		@numeral = []
		@roman_numerals = ["M","D","C","L","X","V","I"]
		@integer_equivalents = [1000,500,100,50,10,5,1]
	end

	def calculate

		@integer_equivalents.each_with_index do |value, index|
		 	loop do
		 		check_sum = @integer - value
		 		if check_sum >= 0 
					@numeral << @roman_numerals[index]
					@integer -= value
		 		end
		 		break if check_sum <= 0
		 	end
		end
	end

	def print_numeral
		puts @numeral.join("")
	end
end

roman = Roman.new(924)

roman.calculate

roman.print_numeral






#Numeral conversion

#    I = 1
#    V = 5
#    X = 10
#    L = 50
#    C = 100
#    D = 500
#    M = 1000




