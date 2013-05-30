def name_tag 
	puts "What is your first name?"
	fname = gets.chomp
	puts "What is your last name?"
	lname = gets.chomp
	puts "What is your gender? (m or f)"
	gen = gets.chomp
	puts "What is your age?"
	age = gets.chomp.to_i


	if gen == "m" 
		title = "Mr."
	elsif gen == "f"
		if age > 19
			title = "Mrs."
		else
			title = "Ms."
		end
	else
		title = "The Honorable"
	end

	output = title + ' ' + fname + ' ' + lname + ' is in the house!'
end

puts name_tag

