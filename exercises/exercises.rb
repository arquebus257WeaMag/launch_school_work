# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5

# end

# loop do
#   print 'Should I stop looping? '
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# say_hello = true
# iter = 1
# while say_hello
#   puts 'Hello!'
#   iter += 1
#   say_hello = false if iter > 5
# end

# numbers = []
# #count = 1
# while numbers.size < 5
#   numbers << rand(99)
#   #count += 1
#   #break if count > 5
# end
# puts numbers

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]
# count = 0
# until numbers.size == count
#   puts numbers[count]
#   count += 1
# end

# for i in 1..100
#   puts i unless i % 2 == 0
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']
# for a in friends
#   puts "Hello, #{a}!"
# end

# count = 1

# loop do
#   if count.odd?
#     puts "#{count} is odd!"
#   else
#     puts "#{count} is even!"
#   end
#   count += 1
#   break if count > 5
# end

# loop do
#   number = rand(100)
#   puts number
#   break if (1..10).include?(number)
# end


# loop do
#   if process_the_loop = [true, false].sample
#   if process_the_loop
#     puts "The loop was processed!"
#     break
#   else
#     puts "process_the_loop"
#   end
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   end
#   puts "Wrong answer. Try again!"
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers

# names = ['Sally', 'Joe', 'Lisa', 'Henry']
# loop do
#   puts names.shift
#   break if names.size == 0
# end

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# number = 0

# until number == 10
#   number += 1
#   puts number if number.even?
# end

# number_a = 0
# number_b = 0

# loop do
#   number_ba += rand(2)
#   number_b += rand(2)
#   #puts "number_a is #{number_a}"
#   #puts "number_b is #{number_b}"
#   next unless number_a == 5 || number_b == 5
#   puts "5 was reached!"
#   break

# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

# print "Type anything you want: "
# input = gets.chomp
# puts input

# puts "What is your age in years?"
# age = gets.chomp.to_i

# result = age * 12
# puts "You are #{result} months old."

# puts "Do you want me to print something? (y/n)"
# loop do
#   input = gets.chomp
#   if input.downcase == 'y'
#     puts "something"
#     break
#   end
#   break if input.downcase == 'n'
#   print "not valid input entered, enter y or n: "
# end

# loop do
#   print "How many output lines do you want? Enter a number >= 3: "
#   input = gets.chomp.to_i
#   if input > 2
#     input.times{puts "Launch School is the best!"}
#     break
#   else
#     puts "That's not enough lines."
#   end
# end

# UN = 'Brad'
# PW = 'waka waka'
# loop do
#   print "Please enter your username: "
#   un = gets.chomp
#   print "Please enter your password: "
#   pw = gets.chomp

#   if un == UN && pw == PW
#     puts "Welcome!"
#     break
#   end
#   puts "Authorization failed!"
# end

# numer = denom = 0

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# loop do
#   print "Please enter the numerator: "
#   numer = gets.chomp

#   unless valid_number?(numer)
#     puts "Invalid input. Only integers are allowed."
#   else
#   	numer = numer.to_i
#     break
#   end
# end

# loop do
#   print "Please enter the denominator: "
#   denom = gets.chomp

#   if valid_number?(denom)
#   	denom = denom.to_i
#   else
#     puts "Invalid input. Only integers are allowed."
#     next
#   end
#   if denom == 0
#     puts "Invalid input. A denominator of 0 is not allowed."
#     next
#   else
#     break
#   end
# end
# result = numer / denom
# puts "#{numer} / #{denom} is #{result}"



# loop do
#   puts '>> How many output lines do you want?'
#   print '>> 4Enter a number >= 3 or q to quit: '
#   ch = gets.chomp
#   break if ch.downcase == 'q'
#   number_of_lines = ch.to_i
#   if number_of_lines < 3
#     puts ">> That's not enough lines."
#   else
#     while number_of_lines > 0
#       puts 'Launch School is the best!'
#       number_of_lines -= 1
#     end
#   end
# end
