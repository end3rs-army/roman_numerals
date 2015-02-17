class Roman

	attr_reader :integer, :numeral

	def initialize(integer)
		@next = false
		@integer = integer
		@numeral = []
		@roman_numerals = ["M","D","C","L","X","V","I"]
		@integer_equivalents = [1000,500,100,50,10,5,1]
	end

	def calculate

		@integer_equivalents.each_with_index do |value, index|
		 	
		 	@next = false	

		 	loop do
		 		check_sum = @integer - value
		 		if @integer == 0
		 			@next = true
		 		elsif check_sum == -1
		 			@numeral << "I"
		 			@integer += 1
		 		elsif check_sum == -10
		 			@numeral << "X"
		 			@integer += 10
		 		elsif check_sum == -100
		 			@numeral << "C"
		 			@integer += 100
		 		elsif
		 			check_sum >= 0 
					@numeral << @roman_numerals[index]
					@integer -= value
		 		else
		 			@next = true
		 		end
		 		break if @next == true
		 	end
		end
	end

	def print_numeral
		puts @numeral.join("")
	end
end

roman = Roman.new(1900)

roman.calculate

roman.print_numeral