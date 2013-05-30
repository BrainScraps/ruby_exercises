def hello_world (name)
	puts "hello, #{name}"
end
hello_world("uauauauaua!")

def area (length, width)
	length * width
end

def volume (length, width, height)
	area(length,width) * height
end

def fizz_buzz 
	100.times do |x|
		case x 
		when x % 3 == 0 && x % 5 == 0
			then	puts "FizzBuzz"
		when x % 5 == 0 
			then puts "Buzz"
		when x % 3 == 0
			then puts "Fizz"
		end
	end
end

fizz_buzz

