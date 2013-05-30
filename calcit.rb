def fancy
	puts "Oh you fancy, huh? Let's do some math!"
	print "Put in the first number > (if you're doing square root, it's the only number!)> "
	first = gets.chomp.to_i
	print "Which fancy-pants operation would you like to do? (S)quare root or (E)xponential?"
	op = gets.chomp.downcase

	if op == 'e'
		print "Raise #{first.to_s} to the power of what? >"
		second = gets.chomp.to_i
		result = first ** second
	elsif op == 's'
		result = Math.sqrt(first)
	else 
		result = 'Your entry was not found - try again.'
	end
		
end

def basic 
		puts "After you enter all three, CalcIt will give you the answer!"
		puts "Let's rock the everlovin' socks off of some math!"

		print "First number >"
		first = gets.chomp.to_i

		print "second number >"
		second =  gets.chomp.to_i

		print "operator (+ - / * )" 
		op = gets.chomp

		case op
			when '*'
				result = first * second
			when '-'
				result = first - second
			when '/'
				result = first / second
			when '+'
				result = first + second
			else 
				result = "You entered an invalid operator: #{op}"
		end
end


def calc 
	puts "Welcome to --CalcIt-- "
	puts "this is a great calculator built by Isaac"
	puts "Use it like a pocket calculator:"
	print "Would you like to use (B)asic math or (F)ancy stuff like exponents and square roots? (B or F)> "
	mode = gets.chomp.downcase

	if mode == 'f'
		result = fancy 
		
	elsif mode == 'b'
		result = basic
	else 
		puts 'Sorry, your entry was not recognized. Try again.'
	end
	puts 'RESULT: ' + result.to_s
	puts "Thanks for using CalcIt!"
	print "Would you like to do another calculation? (Y or N)"
	again = gets.chomp.downcase

	if again == 'y'
		calc
	end


end

calc
